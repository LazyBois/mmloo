package nwsuaf.mmloo.util;

import java.io.UnsupportedEncodingException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailUtil {

	@SuppressWarnings("static-access")
	public static void send(String mail,String message) throws UnsupportedEncodingException, AddressException, MessagingException {
		//发送邮箱验证
            Properties prop = new Properties();
            prop.setProperty("mail.transport.protocol", "smtp");
            prop.setProperty("mail.smtp.host", "smtp.qq.com");
            prop.setProperty("mail.smtp.auth", "true");
            prop.put("mail.smtp.port","587");
            prop.setProperty("mail.debug", "true");
            Authenticator authenticator = new PopAuthenticator("913548946@qq.com", "ivuchhmodszybbcf");
            //创建会话
            Session session = Session.getInstance(prop,authenticator);
            //填写信封写信
            Message msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress("913548946@qq.com"));
            msg.setRecipient(RecipientType.TO, new InternetAddress(mail));
            msg.setSubject("激活邮箱!");
            msg.setText(message);
            //验证用户名密码发送邮件
            Transport transport = session.getTransport();
            transport.send(msg);
	}
}
