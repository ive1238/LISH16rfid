package arduino.light;

import java.awt.BorderLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Scanner;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JPanel;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.data.xy.XYSeries;
import org.jfree.data.xy.XYSeriesCollection;
import com.fazecast.jSerialComm.SerialPort;

public class App {
	
	static SerialPort chosenPort;
	static int x = 0;

	public static void main(String[] args) {
		

		  // create and configure the window
		  final JFrame window = new JFrame();
		  window.setTitle("Sensor Graph GUI");
		  window.setSize(600, 400);
		  window.setLayout(new BorderLayout());
		  window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		  // create a drop-down box and connect button, then place them at the top of the window
		  final JComboBox < String > portList = new JComboBox < String > ();
		  final JButton connectButton = new JButton("Connect & Start program");
		  JPanel topPanel = new JPanel();
		  topPanel.add(portList);
		  topPanel.add(connectButton);
		  window.add(topPanel, BorderLayout.NORTH);

		  // populate the drop-down box
		  SerialPort[] portNames = SerialPort.getCommPorts();
		  for (int i = 0; i < portNames.length; i++)
		   portList.addItem(portNames[i].getSystemPortName());

		  // create the line graph
		  final XYSeries series = new XYSeries("Distance Sensor Readings");
		  XYSeriesCollection dataset = new XYSeriesCollection(series);
		  JFreeChart chart = ChartFactory.createXYLineChart("Light Sensor Readings", "Time (seconds)", "ADC Reading", dataset);
		  window.add(new ChartPanel(chart), BorderLayout.CENTER);

		  // configure the connect button and use another thread to listen for data
		  connectButton.addActionListener(new ActionListener() {
		   public void actionPerformed(ActionEvent arg0) {
		    if (connectButton.getText().equals("Connect & Start program")) {
		     // attempt to connect to the serial port
		     chosenPort = SerialPort.getCommPort(portList.getSelectedItem().toString());
		     chosenPort.setComPortTimeouts(SerialPort.TIMEOUT_SCANNER, 0, 0);
		     if (chosenPort.openPort()) {
		      connectButton.setText("Disconnect & Stop program");
		      portList.setEnabled(false);
		     }

		     // create a new thread that listens for incoming text and populates the graph
		     Thread thread = new Thread() {
		      @Override public void run() {
		       Scanner scanner = new Scanner(chosenPort.getInputStream());
		       while (scanner.hasNextLine()) {
		        try {
		         String line = scanner.nextLine();
		         int number = Integer.parseInt(line);
		         series.add(x++, number);
		         window.repaint();
		         System.out.println(number);

		         if (number < 30) {
		         
		         }

		        } catch (Exception e) {}
		       }
		       scanner.close();
		      }
		     };
		     thread.start();
		    } else {
		     // disconnect from the serial port
		     chosenPort.closePort();
		     portList.setEnabled(true);
		     connectButton.setText("Connect & Start program");
		     series.clear();
		     x = 0;
		    }
		   }
		  });

		  // show the window
		  window.setVisible(true);
		 }

		}