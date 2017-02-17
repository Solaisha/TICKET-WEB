package com.naresh.controller;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.http.HttpSession;

import org.apache.commons.mail.EmailException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.solai.dao.UserDAO;
import com.solai.exception.ServiceException;
import com.solai.model.Employee;
import com.solai.model.Issue;
import com.solai.model.User;
import com.solai.service.TicketPlacingService;
import com.solai.util.MailUtil;
/**
 * Hello
 * @author DELL
 *
 */
@Controller
@RequestMapping("/tickets")
public class TicketController 
{
	
	
	User user=new User();
	Employee employee=new Employee();
	
	private static final Logger LOGGER=Logger.getLogger(TicketController.class.getName());
	TicketPlacingService ticketPlacingService=new TicketPlacingService();
	UserDAO userDAO=new UserDAO();
	
	@GetMapping
	public String welcome(ModelMap modelmap) throws ServiceException
	{
		return "Welcome.jsp";
	}
	
	@GetMapping("/userregister")
	public String registeruser(@RequestParam("Name") String name,@RequestParam ("EmailId") String emailId,@RequestParam("Password") String password,HttpSession session )throws ServiceException
	{
		System.out.println("TicketController-> userregister- name:" + name + ",emailId=" + emailId + ",password:" + password);
		User user=new User();
		user.setName(name);
		try
		{
			ticketPlacingService.userRegistration(name, emailId, password);
			session.setAttribute("name", user);
			return "redirect:../userlogin.jsp";
		}
		catch(ServiceException e)
		{
			LOGGER.log(Level.SEVERE, "Registration Failed due to Invalid input!!", e);
			return "redirect:../userregister.jsp";
			

		}
		
	}		
		@GetMapping("/userlogin")
		public String loginuser(@RequestParam("EmailId") String emailId , @RequestParam("Password") String password,HttpSession session)
		{
			System.out.println("TicketController-> userlogin-emailId="+emailId+",password="+password);
			User user=new User();
			UserDAO userDAO=new UserDAO();
			String name=userDAO.findname(emailId).getName();
			user.setName(name);
			user.setEmailId(emailId);
			user.setPassword(password);
			
		try
		{

				ticketPlacingService.userLogin(user.getEmailId(),user.getPassword());
				session.setAttribute("login", user);
				
				return  "redirect:../useroptions.jsp";
		}
		catch(ServiceException e)
		{
			LOGGER.log(Level.SEVERE, "Login Failed due to Invalid input!!", e);
			
			return "redirect:../userlogin.jsp";
		}
}
		
		@GetMapping("/employeeregister")
		public String employeeregister(@RequestParam("Name")String name,@RequestParam ("EmailId") String emailId,@RequestParam("Password") String password )throws ServiceException
		{
			System.out.println("TicketController-> employeeregister- name:" + name + ",emailId=" + emailId + ",password:" + password);
			try
			{
					ticketPlacingService.userRegistration(name, emailId, password);
				
				return "redirect:../employeelogin.jsp";
			}
			catch(ServiceException e)
			{
				LOGGER.log(Level.SEVERE, "Registration Failed due to Invalid input!!", e);
				return "redirect:../employeeregister.jsp";

			}
		
}
			@GetMapping("/employeelogin")
			public String employeelogin(@RequestParam ("EmailId") String emailId,@RequestParam("Password") String password ,HttpSession session)throws ServiceException
			{
				employee.setEmailId(emailId);
				employee.setPassword(password);
				System.out.println("TicketController-> employeelogin-emailId:"+emailId+",password="+password);
				try
				{
					ticketPlacingService.employeeLogin(emailId, password);
					session.setAttribute("emplogin", employee);

					return  "redirect:../employeeoptions.jsp";
				}
				catch(ServiceException e)
				{
					LOGGER.log(Level.SEVERE, "Registration Failed due to Invalid input!!", e);
					return "redirect:../employeelogin.jsp";
				}
			}
		
			@GetMapping("/ticketcreation")
			public String ticketCreation(@RequestParam ("EmailId") String emailId,@RequestParam("Password") String password,@RequestParam("Subject") String subject,@RequestParam("Description")String description,@RequestParam("Department") String name,@RequestParam("Priority")String priority,HttpSession session) throws ServiceException
			{
				System.out.println("TicketController-> ticketcreation-emailId=:"+emailId+",password="+password+",subject="+subject+",description="+description+",name="+name+",priority="+priority);
				try
				{
					
					ticketPlacingService.creatingTicket(emailId, password, subject, description, name, priority);
					session.getAttribute("login");
					return "redirect:../useroptions.jsp";
		
				}
				catch(ServiceException e)
				{
					LOGGER.log(Level.SEVERE, "Ticket Creation Failed due to Invalid input!!", e);
					return "redirect:../ticketcreation.jsp";
				}
			}
		
		@GetMapping("/updateticket")
			public String updateticket(@RequestParam ("EmailId") String emailId,@RequestParam("Password") String password,@RequestParam("IssueId") int issueId,@RequestParam("UpdateDescription") String description,HttpSession session )throws ServiceException
			{
				System.out.println("TicketController-> updateticket-emailId=" + emailId + ",password=" + password+",issueId="+issueId+"updateDescription="+description);
				try
				{
					ticketPlacingService.updatingTicket(emailId, password, issueId, description);
					session.getAttribute("login");
					return "redirect:../useroptions.jsp";
				}
				catch(ServiceException e)
				{
					LOGGER.log(Level.SEVERE, "Ticket Updation Failed due to Invalid input!!", e);
					return "redirect:../updateticket.jsp";
				}
			}
		
			@GetMapping("/closeticket")
			public String closeticket(@RequestParam("EmailId")String emailId,@RequestParam("Password")String password,@RequestParam("IssueId") int issueId,HttpSession session)throws ServiceException
			{
				System.out.print("TicketController-> viewUserDetails-emailId=" + emailId + ",password:" + password+",IssueId:"+issueId);
			
				try
				{
					ticketPlacingService.updateTicketClose( emailId, password, issueId);
					return"redirect:../useroptions.jsp";
				}
				catch(ServiceException e)
				{
					LOGGER.log(Level.SEVERE, "Closing ticket cant be performed!!", e);
					return "redirect:../closeticket.jsp";
				}
			}
		
		
		
		@GetMapping("/view_user_records")
		public String viewUserDetails(@RequestParam("EmailId")String emailId,@RequestParam("Password")String password,
				ModelMap modelMap)throws ServiceException
		{
			System.out.println("TicketController-> viewUserDetails-emailId=" + emailId + ",password:" + password);
			try
			{
				
			  List<Issue> list= ticketPlacingService.findUserRecords(emailId, password);
			    modelMap.addAttribute("list",list );
				return "../view_user_records.jsp";
			}
			catch(ServiceException e)
			{
				LOGGER.log(Level.SEVERE, "Ticket view Failed due to Invalid input!!", e);
				return "redirect:../view_user_records.jsp";

			}
}

		
		@GetMapping("/assignemployee")
		public String assigningEmployee(@RequestParam("EmailId")String emailId,@RequestParam("Password")String password,@RequestParam("IssueId") int issueId,@RequestParam("EmployeeId") int employeeId ) throws ServiceException
		{
			System.out.println("TicketController->assigningEmployee-emailId="+emailId+",password:"+password+",issueId:"+issueId+",employeeId:"+employeeId);
			try
			{
				ticketPlacingService.assigningEmployee(emailId, password, issueId, employeeId);
				return "redirect:../employeeoptions.jsp";
			}
			catch(ServiceException e)
			{
				LOGGER.log(Level.SEVERE, "Assigning Employee cant be performed!!", e);
				return "redirect:../assignemployee.jsp";
			}
		}
		
		@GetMapping("/ticketsolution")
		public String givingsolution(@RequestParam("EmailId")String emailId,@RequestParam("Password")String password,@RequestParam("IssueId") int issueId,@RequestParam("TicketSolution") String ticketSolution) throws ServiceException
		{
			System.out.println("TicketController->givingEmployee-emailId="+emailId+",password:"+password+",issueId:"+issueId+",ticketSolution:"+ticketSolution);
			try
			{
				ticketPlacingService.ticketSolution(emailId, password, issueId, ticketSolution);
				return "redirect:../employeeoptions.jsp";
				
			}
			catch(ServiceException e)
			{
				LOGGER.log(Level.SEVERE, "Providing Solution cant be performed!!", e);
				return "redirect:../ticketsolution.jsp";
			}
		}
		
		@GetMapping("/viewtickets")
		public String viewEmpTickets(@RequestParam("EmailId")String emailId,@RequestParam("Password")String password,ModelMap modelMap)throws ServiceException
		{
			System.out.println("TicketController->viewEmpTickets-emailId="+emailId+",password:"+password);
			try
			{
				ticketPlacingService.findEmployeeTickets(emailId, password);
				return "../viewtickets.jsp";
			}
		catch(ServiceException e)
		{
			LOGGER.log(Level.SEVERE, "Viewing tickets cant be performed!!", e);
			return "redirect:../employeeoptions.jsp";
			

		}
		}
		
			@GetMapping("/deleteticket")
			public String deletetickets(@RequestParam("EmailId")String emailId,@RequestParam("Password")String password, @RequestParam("IssueId") int issueId,HttpSession session) throws ServiceException
			{
				System.out.println("TicketController->deletetickets-emailId="+emailId+",password:"+password+",IssueId:"+issueId);
				try
				{
					ticketPlacingService.deleteTickets(emailId, password, issueId);
					return"redirect:../employeeoptions.jsp";
				}
				catch(ServiceException e)
				{
					LOGGER.log(Level.SEVERE, "Deleting tickets cant be performed!!", e);
					return "redirect: ../deleteticket.jsp";


			}
}
			@GetMapping("/logout")
			public String logout(HttpSession session)
			{
//				session.invalidate();
				return("Welcome.jsp");
			}
			
			
}




