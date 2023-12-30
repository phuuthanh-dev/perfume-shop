/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.time.LocalDateTime;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author lvhho
 */
public class Email {

    private final String eFrom = "lvhhoangg1@gmail.com";
    private final String ePass = "ojlx ohfr qxwd llxx";

    // 
    // check email
    public boolean isValidEmail(String email) {
        // Biểu thức chính quy cho định dạng email
        String emailRegex = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Z|a-z]{2,}$";

        // Tạo đối tượng Pattern
        Pattern pattern = Pattern.compile(emailRegex);

        // Tạo đối tượng Matcher
        Matcher matcher = pattern.matcher(email);

        // Kiểm tra chuỗi với biểu thức chính quy
        return matcher.matches();
    }

    public void sendEmail(String subject, String messgage, String to) {
        try {

        } catch (Exception e) {
        }
        // Properties
        Properties props = new Properties();

        //Su dung server nao de gui mail- smtp host
        props.put("mail.smtp.host", "smtp.gmail.com");

        // TLS 587 SSL 465
        props.put("mail.smtp.port", "smtp.gmail.com");

        // dang nhap
        props.put("mail.smtp.auth", "true");

        props.put("mail.smtp.starttls.enable", "true");

        //dang nhap tai khoan
        Authenticator au = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(eFrom, ePass);
            }

        };
        // phien lam viec
        Session session = Session.getInstance(props, au);

        try {
            MimeMessage msg = new MimeMessage(session);
            msg.addHeader("Content-type", "text/HTML, charset=UTF-8");
            msg.setFrom(new InternetAddress(eFrom));
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to, false));
            // tieu de
            msg.setSubject(subject, "UTF-8");
            // Noi dung
            msg.setContent(messgage, "text/html; charset=UTF-8");
            // Gui email
            Transport.send(msg);
        } catch (Exception e) {
            System.out.println("Send email failed");
            e.printStackTrace();
        }
    }

    // Select subject to send email
    public String subjectDiscount() {
        return "Perfume Paradise - Heyyy, Unlock Your Exclusive Discount Inside!";
    }

    public String subjectContact(String name) {
        return "Hey " + name + " you have an appointment with us - Perfume Paradise";
    }

    public String subjectOrder(String fullName) {
        return "Hi, " + fullName + ", thanks for your order from Perfume Paradise Store!";
    }

    public String subjectForgotPass() {
        return "Support forgot password";
    }

    // Select content to send email
    public String messageDiscount(int discount) {
        return "<!DOCTYPE html>\n"
                + "<html lang=\"en\">\n"
                + "<head>\n"
                + "  <meta charset=\"UTF-8\">\n"
                + "  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
                + "  <style>\n"
                + "    body {\n"
                + "      font-family: Arial, sans-serif;\n"
                + "      background-color: #f4f4f4;\n"
                + "      margin: 0;\n"
                + "      padding: 0;\n"
                + "    }\n"
                + "\n"
                + "    .email-container {\n"
                + "      max-width: 600px;\n"
                + "      margin: 20px auto;\n"
                + "      background-color: #fff;\n"
                + "      border-radius: 8px;\n"
                + "      overflow: hidden;\n"
                + "      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\n"
                + "    }\n"
                + "\n"
                + "    .header {\n"
                + "      background-color: #3498db;\n"
                + "      color: #fff;\n"
                + "      padding: 20px;\n"
                + "      text-align: center;\n"
                + "    }\n"
                + "\n"
                + "    .content {\n"
                + "      padding: 20px;\n"
                + "    }\n"
                + "\n"
                + "    .discount-code {\n"
                + "      background-color: #e74c3c;\n"
                + "      color: #fff;\n"
                + "      padding: 10px;\n"
                + "      text-align: center;\n"
                + "      margin-bottom: 20px;\n"
                + "      font-size: 20px;\n"
                + "      border-radius: 4px;\n"
                + "    }\n"
                + "\n"
                + "    .footer {\n"
                + "      background-color: #3498db;\n"
                + "      color: #fff;\n"
                + "      padding: 10px;\n"
                + "      text-align: center;\n"
                + "    }\n"
                + "  </style>\n"
                + "</head>\n"
                + "<body>\n"
                + "  <div class=\"email-container\">\n"
                + "    <div class=\"header\">\n"
                + "      <h1>Special Discount Alert!</h1>\n"
                + "    </div>\n"
                + "    <div class=\"content\">\n"
                + "      <p>Hi there,</p>\n"
                + "      <p>We're excited to share an exclusive discount with you! You're the first to know about this special offer.</p>\n"
                + "      <div class=\"discount-code\">\n"
                + "        <p>Discount Code: <strong>DISCOUNT" + discount + "</strong></p>\n"
                + "      </div>\n"
                + "      <p>Don't miss out on this fantastic opportunity. Place your order today!</p>\n"
                + "    </div>\n"
                + "    <div class=\"footer\">\n"
                + "      <p>Thank you for being a valued customer!</p>\n"
                + "    </div>\n"
                + "  </div>\n"
                + "</body>\n"
                + "</html>";
    }

    public String messageContact(String name) {
        return "<!DOCTYPE html>\n"
                + "<html lang=\"en\">\n"
                + "\n"
                + "<head>\n"
                + "    <meta charset=\"UTF-8\">\n"
                + "    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n"
                + "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
                + "    <title>Chăm sóc khách hàng - Perfume Paradise</title>\n"
                + "    <style>\n"
                + "        body {\n"
                + "            font-family: 'Arial', sans-serif;\n"
                + "            margin: 0;\n"
                + "            padding: 0;\n"
                + "            background-color: #f4f4f4;\n"
                + "        }\n"
                + "\n"
                + "        .container {\n"
                + "            max-width: 600px;\n"
                + "            margin: 0 auto;\n"
                + "            background-color: #fff;\n"
                + "            padding: 20px;\n"
                + "            border-radius: 10px;\n"
                + "            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\n"
                + "            margin-top: 20px;\n"
                + "        }\n"
                + "\n"
                + "        h1,\n"
                + "        p {\n"
                + "            text-align: center;\n"
                + "        }\n"
                + "\n"
                + "        .logo {\n"
                + "            text-align: center;\n"
                + "            margin-bottom: 20px;\n"
                + "        }\n"
                + "\n"
                + "        img {\n"
                + "            max-width: 100%;\n"
                + "            height: auto;\n"
                + "        }\n"
                + "\n"
                + "        .message {\n"
                + "            margin-top: 20px;\n"
                + "        }\n"
                + "\n"
                + "        .btn {\n"
                + "            display: inline-block;\n"
                + "            padding: 10px 20px;\n"
                + "            background-color: #3498db;\n"
                + "            color: #fff;\n"
                + "            text-decoration: none;\n"
                + "            border-radius: 5px;\n"
                + "        }\n"
                + "\n"
                + "        .footer {\n"
                + "            margin-top: 20px;\n"
                + "            text-align: center;\n"
                + "            color: #888;\n"
                + "        }\n"
                + "    </style>\n"
                + "</head>\n"
                + "\n"
                + "<body>\n"
                + "    <div class=\"container\">\n"
                + "        <h1>Chào mừng bạn đến với Perfume Paradise!</h1>\n"
                + "        <div class=\"message\">\n"
                + "            <p>Xin chân thành cảm ơn khách hàng " + name + " đã lựa chọn Perfume Paradise cho nhu cầu mua sắm của mình.</p>\n"
                + "            <p>Chúng tôi luôn cam kết mang đến cho bạn những sản phẩm chất lượng nhất và dịch vụ tận tâm nhất.</p>\n"
                + "            <p>Nếu bạn có bất kỳ câu hỏi hoặc đề xuất nào, đừng ngần ngại liên hệ với chúng tôi qua địa chỉ email:\n"
                + "                <a href=\"perfumeparadisevn@gmail.com\" class=\"btn\">customer_support@perfumeparadise.com</a>\n"
                + "            </p>\n"
                + "            <p>Cảm ơn bạn và chúc bạn có một trải nghiệm mua sắm tuyệt vời!</p>\n"
                + "        </div>\n"
                + "        <div class=\"footer\">\n"
                + "            <p>Perfume Paradise - 61/2 Quang Trung, Ward 10 Go Vap District, Ho Chi Minh city - Số điện thoại: 1900 9090</p>\n"
                + "        </div>\n"
                + "    </div>\n"
                + "</body>\n"
                + "\n"
                + "</html>";
    }

    // 
    public String messageOrder(LocalDateTime date, double totalMoney, String address) {
        return "<!DOCTYPE html>\n"
                + "<html lang=\"en\">\n"
                + "<head>\n"
                + "  <meta charset=\"utf-8\">\n"
                + "  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\n"
                + "  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
                + "  <style>\n"
                + "    body {\n"
                + "      font-family: Arial, sans-serif;\n"
                + "      background-color: #f4f4f4;\n"
                + "      margin: 0;\n"
                + "      padding: 0;\n"
                + "    }\n"
                + "\n"
                + "    .email-container {\n"
                + "      max-width: 600px;\n"
                + "      margin: 20px auto;\n"
                + "      background-color: #fff;\n"
                + "      border-radius: 8px;\n"
                + "      overflow: hidden;\n"
                + "      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\n"
                + "    }\n"
                + "\n"
                + "    .header {\n"
                + "      background-color: #3498db;\n"
                + "      color: #fff;\n"
                + "      padding: 20px;\n"
                + "      text-align: center;\n"
                + "    }\n"
                + "\n"
                + "    .content {\n"
                + "      padding: 20px;\n"
                + "    }\n"
                + "\n"
                + "    .discount-code {\n"
                + "      background-color: #e74c3c;\n"
                + "      color: #fff;\n"
                + "      padding: 10px;\n"
                + "      text-align: center;\n"
                + "      margin-bottom: 20px;\n"
                + "      font-size: 20px;\n"
                + "      border-radius: 4px;\n"
                + "    }\n"
                + "\n"
                + "    .footer {\n"
                + "      background-color: #3498db;\n"
                + "      color: #fff;\n"
                + "      padding: 10px;\n"
                + "      text-align: center;\n"
                + "    }\n"
                + "  </style>\n"
                + "</head>\n"
                + "<body>\n"
                + "  <div class=\"email-container\">\n"
                + "    <div class=\"header\">\n"
                + "     <h1>Perfume Shop</h1>\n"
                + "      <h2>Your order is on its way!</h2>\n"
                + "    </div>\n"
                + "    <div class=\"content\">\n"
                + "      <h3>Order summary:</h3>\n"
                + "      <p>Order Date: " + date + "</p>\n"
                + "      <p>Order Total: " + totalMoney + "$</p>\n"
                + "      <p>Shipping address: " + address + "</p>\n"
                + "      <p>If you have any questions, contact us here or call us on 0707064154.</p>\n"
                + "      <p>We are here to help!</p>\n"
                + "    </div>\n"
                + "    <div class=\"footer\">\n"
                + "      <p>Thank you for placing your order!</p>\n"
                + "    </div>\n"
                + "  </div>\n"
                + "</body>\n"
                + "</html>";
    }

    public String messageForgotPass(String name,int code) {
        return "<!DOCTYPE html>\n"
                + "<html lang=\"en\">\n"
                + "<head>\n"
                + "    <meta charset=\"UTF-8\">\n"
                + "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
                + "    <title>Password Reset Code</title>\n"
                + "</head>\n"
                + "<body style=\"font-family: Arial, sans-serif; background-color: #f4f4f4; margin: 0; padding: 0;\">\n"
                + "\n"
                + "    <table style=\"width: 100%; max-width: 600px; margin: 20px auto; background-color: #ffffff; border-collapse: collapse;\">\n"
                + "        <tr>\n"
                + "            <td style=\"padding: 20px; text-align: center; background-color: #4CAF50; color: #ffffff; font-size: 24px;\">\n"
                + "                Password Reset Code\n"
                + "            </td>\n"
                + "        </tr>\n"
                + "        <tr>\n"
                + "            <td style=\"padding: 20px;\">\n"
                + "                <p>Hello "+name+",</p>\n"
                + "                <p>You have requested to reset your password. Please use the following code to reset your password:</p>\n"
                + "                <p style=\"font-size: 28px; font-weight: bold; color: #4CAF50;\">" + code + "</p>\n"
                + "                <p>If you didn't request this, you can safely ignore this email.</p>\n"
                + "                <p>Thank you!</p>\n"
                + "            </td>\n"
                + "        </tr>\n"
                + "        <tr>\n"
                + "            <td style=\"padding: 20px; text-align: center; background-color: #4CAF50; color: #ffffff;\">\n"
                + "                &copy; 2023 Perfume Paradise\n"
                + "            </td>\n"
                + "        </tr>\n"
                + "    </table>\n"
                + "\n"
                + "</body>\n"
                + "</html>";
    }
}
