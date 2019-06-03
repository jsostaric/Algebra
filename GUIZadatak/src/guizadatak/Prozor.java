package guizadatak;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JMenuBar;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;

public class Prozor extends JFrame implements ActionListener {
    
    JPanel panel1 = new JPanel(new BorderLayout());
    JPanel panel2 = new JPanel(new GridLayout(4,4));   
    JPanel panel3 = new JPanel(new GridLayout(4,1));
    
    JButton b0 = new JButton("0");    
    JButton b1 = new JButton("1");
    JButton b2 = new JButton("2");
    JButton b3 = new JButton("3");
    JButton b4 = new JButton("4");
    JButton b5 = new JButton("5");
    JButton b6 = new JButton("6");
    JButton b7 = new JButton("7");
    JButton b8 = new JButton("8");
    JButton b9 = new JButton("9");
    
    JButton oPlus = new JButton("+");
    JButton oMinus = new JButton("-");
    JButton oPuta = new JButton("*");
    JButton oPodijeljeno = new JButton("/");
    JButton oJednako = new JButton("=");
    JButton oCisti = new JButton("C");
    
    JTextField tf = new JTextField("0");
    
    
    public Prozor(String naslov) {
        super(naslov);
        b0.addActionListener(this);
        b1.addActionListener(this);
        b2.addActionListener(this);
        b3.addActionListener(this);
        b4.addActionListener(this);
        b5.addActionListener(this);
        b6.addActionListener(this);
        b7.addActionListener(this);
        b8.addActionListener(this);
        b9.addActionListener(this);
        oPuta.addActionListener(this);
        oPlus.addActionListener(this);
        oPodijeljeno.addActionListener(this);
        oJednako.addActionListener(this);
        oCisti.addActionListener(this);
        
        tf.setPreferredSize(new Dimension(200, 50));
        panel1.setBorder(BorderFactory.createEmptyBorder(10,10,5,10));
        panel1.add(tf);
        
        panel2.setBorder(BorderFactory.createEmptyBorder(5,10,5,5));
        panel2.add(b1);
        panel2.add(b2);
        panel2.add(b3);
        panel2.add(b4);
        panel2.add(b5);
        panel2.add(b6);
        panel2.add(b7);
        panel2.add(b8);
        panel2.add(b9);
        panel2.add(b0);
        panel2.add(oJednako);
        panel2.add(oCisti);
        
        panel3.setBorder(BorderFactory.createEmptyBorder(5,15,0,10));
        panel3.add(oPlus);
        panel3.add(oMinus);
        panel3.add(oPuta);
        panel3.add(oPodijeljeno);
        
        
        this.getContentPane().add(panel1, BorderLayout.NORTH);
        this.getContentPane().add(panel2, BorderLayout.CENTER);
        this.getContentPane().add(panel3, BorderLayout.EAST);
        
        
    }
    
    @Override
    public void actionPerformed(ActionEvent e) {
        
    }
}
