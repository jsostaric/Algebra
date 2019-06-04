package guizadatak;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JMenuBar;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;

public class Prozor extends JFrame {
    
    private ArrayList<String> brojevi;
    private String operacija = "";
    private boolean flag;
    
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
    
    JTextField textField = new JTextField("0");
    
    
    public Prozor(String naslov) {
        super(naslov);
        
        brojevi = new ArrayList<>();
        
        b0.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                b0Action(e);
            }
        });        
        b1.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                b1Action(e);
            }
        });
        b2.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                b2Action(e);
            }
        });
        b3.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                b3Action(e);
            }
        });
        b4.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                b4Action(e);
            }
        });
        b5.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                b5Action(e);
            }
        });
        b6.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                b6Action(e);
            }
        });
        b7.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                b7Action(e);
            }
        });
        b8.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                b8Action(e);
            }
        });
        b9.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                b9Action(e);
            }
        });
        oPuta.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                multiplyAction(e);
            }
        });
        oPlus.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                addAction(e);
            }
        });
        oMinus.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                retractAction(e);
            }
        });
        oPodijeljeno.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                divideAction(e);
            }
        });
        oJednako.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                equalsAction(e);
            }
        });
        oCisti.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                clearAction(e);
            }
        });
        
        textField.setPreferredSize(new Dimension(200, 50));
        panel1.setBorder(BorderFactory.createEmptyBorder(10,10,5,10));
        panel1.add(textField);
        
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
    
    
    public void b0Action(ActionEvent e) {
        String tf = textField.getText();
        if(!tf.equalsIgnoreCase("0")){          
            tf = textField.getText();
            tf +="0";
            textField.setText(tf);
        }
    }
    
    public void b1Action(ActionEvent e) {
        String tf = textField.getText();
        if(tf.equalsIgnoreCase("0")){
            textField.setText("1");
        }else{
            tf = textField.getText();
            tf +="1";
            textField.setText(tf);
        }
    }
    
    public void b2Action(ActionEvent e) {
        String tf = textField.getText();
        if(tf.equalsIgnoreCase("0")){
            textField.setText("2");
        }else{
            tf = textField.getText();
            tf +="2";
            textField.setText(tf);
        }
    }
    
    public void b3Action(ActionEvent e) {
        String tf = textField.getText();
        if(tf.equalsIgnoreCase("0")){
            textField.setText("3");
        }else{
            tf = textField.getText();
            tf +="3";
            textField.setText(tf);
        }
    }
    
    public void b4Action(ActionEvent e) {
        String tf = textField.getText();
        if(tf.equalsIgnoreCase("0")){
            textField.setText("4");
        }else{
            tf = textField.getText();
            tf +="4";
            textField.setText(tf);
        }
    }
    
    public void b5Action(ActionEvent e) {
        String tf = textField.getText();
        if(tf.equalsIgnoreCase("0")){
            textField.setText("5");
        }else{
            tf = textField.getText();
            tf +="5";
            textField.setText(tf);
        }
    }
    
    public void b6Action(ActionEvent e) {
        String tf = textField.getText();
        if(tf.equalsIgnoreCase("0")){
            textField.setText("6");
        }else{
            tf = textField.getText();
            tf +="6";
            textField.setText(tf);
        }
    }
    
    public void b7Action(ActionEvent e) {
        String tf = textField.getText();
        if(tf.equalsIgnoreCase("0")){
            textField.setText("7");
        }else{
            tf = textField.getText();
            tf +="7";
            textField.setText(tf);
        }
    }
    
    public void b8Action(ActionEvent e) {
        String tf = textField.getText();
        if(tf.equalsIgnoreCase("0")){
            textField.setText("8");
        }else{
            tf = textField.getText();
            tf +="8";
            textField.setText(tf);
        }
    }
    
    public void b9Action(ActionEvent e) {
        String tf = textField.getText();
        if(tf.equalsIgnoreCase("0")){
            textField.setText("9");
        }else{
            tf = textField.getText();
            tf +="9";
            textField.setText(tf);
        }
    }
    
    public void addAction(ActionEvent e) {
        if(!flag){
        String tf = textField.getText();
       brojevi.add(tf);
       textField.setText("0");
       }else {
           brojevi.add("0");
           textField.setText("0");
       }
       operacija="+";
    }
    
    public void retractAction(ActionEvent e) {
       if(!flag){
        String tf = textField.getText();
       brojevi.add(tf);
       textField.setText("0");
       }else {
           brojevi.add("0");
           textField.setText("0");
       }
       operacija="-";
    }
    
    public void multiplyAction(ActionEvent e) {
       if(!flag){
        String tf = textField.getText();
       brojevi.add(tf);
       textField.setText("0");
       }else {
           brojevi.add("0");
           textField.setText("0");
       }
       operacija="*";
    }
    
    public void divideAction(ActionEvent e) {
       try {
        if(!flag){
        String tf = textField.getText();
        brojevi.add(tf);
        textField.setText("0");
       }else {
           brojevi.add("0");
           textField.setText("0");
       }
       operacija="/";
       }catch(Exception ex){
           JOptionPane.showMessageDialog(this, "Can't divide by zero");
       }
    }
    
    public void equalsAction(ActionEvent e) {
        flag=true;
        String tf = textField.getText();
       brojevi.add(tf);
        if(operacija.equalsIgnoreCase("+")) {
            int rezultat = 0;
            for(int i=0;i<brojevi.size();i++) {
                rezultat+=Integer.parseInt(brojevi.get(i));
            }
            brojevi.clear();
            brojevi.add(String.valueOf(rezultat));
            textField.setText(String.valueOf(rezultat));
        }
        
        if(operacija.equalsIgnoreCase("-")) {
            int rezultat = 0;
            for(int i=0;i<brojevi.size();i++) {
                rezultat-=Integer.parseInt(brojevi.get(i));
            }
            brojevi.clear();
            brojevi.add(String.valueOf(rezultat));
            textField.setText(String.valueOf(rezultat));
        }
        
        if(operacija.equalsIgnoreCase("*")) {
            int rezultat = 0;
            for(int i=0;i<brojevi.size();i++) {
                rezultat*=Integer.parseInt(brojevi.get(i));
            }
            brojevi.clear();
            brojevi.add(String.valueOf(rezultat));
            textField.setText(String.valueOf(rezultat));
        }
        
        if(operacija.equalsIgnoreCase("/")) {
            int rezultat = 0;
            for(int i=0;i<brojevi.size();i++) {
                rezultat/=Integer.parseInt(brojevi.get(i));
            }
            brojevi.clear();
            brojevi.add(String.valueOf(rezultat));
            textField.setText(String.valueOf(rezultat));
        }
    }
    
    public void clearAction(ActionEvent e) {
        flag = false;
        textField.setText("0");
        brojevi.clear();
    }
    
}
