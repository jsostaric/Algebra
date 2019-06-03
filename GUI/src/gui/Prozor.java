package gui;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*;

public class Prozor extends JFrame implements ActionListener {
    
        //pozdravna poruka
        JLabel pozdravnaPoruka = new JLabel("Hello World!");
        //kreiranje gumba
        JButton prviGumb=new JButton("Klikni Me!"); 
        
        //input polja
        JLabel ime = new JLabel("Ime:");
        JTextField txtIme=new JTextField("Upišite ime", 30);
        JLabel opis = new JLabel("Opis:");
        JTextArea txtOpis = new JTextArea("Upišite opis:", 6,30);
        
        //checkbox
        JCheckBox zgGumb= new JCheckBox("Zagreb");
        //zgGumb.setSelected(true);
        
        JCheckBox stGumb= new JCheckBox("Split");
        JCheckBox riGumb= new JCheckBox("Rijeka");
        JCheckBox osGumb= new JCheckBox("Osijek");
    
    
    public Prozor(String naslov) {
        super(naslov);
        
       
        this.getContentPane().add(prviGumb);
        this.getContentPane().add(pozdravnaPoruka);
        
        //registriranje slušača
        prviGumb.addActionListener(this);
        
        /*
        
        this.getContentPane().add(pozdravnaPoruka);
        
        this.getContentPane().add(ime);
        this.getContentPane().add(txtIme);
        this.getContentPane().add(opis);
        this.getContentPane().add(txtOpis);
        
        //checkbox
        this.getContentPane().add(zgGumb);
        this.getContentPane().add(stGumb);
        this.getContentPane().add(riGumb);
        this.getContentPane().add(osGumb);                       
        */
        
        setLayout(new FlowLayout());
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        JOptionPane.showMessageDialog(this, "Hello World!");
    }
    
    
}
