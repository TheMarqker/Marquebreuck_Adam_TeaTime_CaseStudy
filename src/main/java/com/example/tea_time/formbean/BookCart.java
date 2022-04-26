package com.example.tea_time.formbean;

import java.text.NumberFormat;
import java.util.ArrayList;

public class BookCart {

    private ArrayList<Book> cart;
    private NumberFormat cf = NumberFormat.getCurrencyInstance();

    public BookCart() {

        cart = new ArrayList<Book>();
    }

    public void setBook(String code) {

        boolean found = false;
        for (Book b : cart)
            if (b.getCode().equals(code)) {

                b.addQuantity(1);
                found = true;
            }
        if (!found) {
            Book b = new Book();
            b.setCode(code);
            cart.add(b);
        }
    }

    public String getList()
    {
        String list = "<table border=2>";
        list +="<tr>" +
                "<td>Title</td> <td>Qty</td>"
              + "<td>Price</td> <td>Total</td>";

        double total = 0.0;
                for (Book b : cart) {

                    list += "<tr><td>"
                            + b.getTitle() + "<td>"
                            + "<td>" + b.getQuantity() + "<td>"
                            + "<td>" + cf.format(b.getPrice())
                            + "</td>"
                            + "<td>" + cf.format(b.getTotal())
                            + "</td>"
                            + "</tr>";
                    total += b.getTotal();
                }
                     list +="<tr><td/><td/><td>Total:</td>"
                             + "<td>" + cf.format(total)
                             + "</td></tr>";
                list += "</table>>";
                return list;
    }

    private class Book {
        private String code;
        private int quantity;

        public String getCode() {
            return this.code;
        }

        public void setCode(String code) {
            this.code = code;
        }
    public String getTitle() {
            if (code.equals("elecaio"))
                return "Electronics all-in one for dummies";
            else if (code.equals("netaio"))
                return "Networking all in one for dummies";
            else if (code.equals("javaaio"))
                return "Java all in one for dummies";
            else
                return "Unknown Book";
    }

    public double getPrice() {
        if (code.equals("elecaio"))
            return 24.99;
        else if (code.equals("netaio"))
            return 25.99;
        else if (code.equals("javaaio"))
            return 26.99;
        else
            return 0.0;
    }

    public int getQuantity() {
            return this.quantity;
    }

    public void addQuantity(int qty) {
            this.quantity += qty;
    }

    public double getTotal() {
            return this.quantity * this.getPrice();
    }
  }

}