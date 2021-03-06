package spring.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import spring.vo.RegisterRequest;

public class RegisterRequestValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		
	}
	
//	// 이메일 검증을 위한 정규식
//	private static final String emailExp = 
//			"^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$";
//	
//	private Pattern pattern;
//	
//	public RegisterRequestValidator() {
//		pattern = Pattern.compile(emailExp);
//	}
//
//	@Override
//	public boolean supports(Class<?> clazz) {
//	
//		return RegisterRequest.class.isAssignableFrom(clazz);
//	}
//
//	@Override
//	public void validate(Object target, Errors errors) {
//		
//		RegisterRequest regReq = (RegisterRequest)target;
//		
//		if(regReq.getEmail()==null || regReq.getEmail().trim().isEmpty()) {
//			errors.rejectValue("email", "required"); // => JSP에 에러 출력 태그에 email이라는 속성에 required값을 전달한다.
//		}else {
//			Matcher matcher = pattern.matcher(regReq.getEmail());
//			if(!matcher.matches()) { //matches() 일치한다면 true, 일치하지 않는다면 false
//				errors.rejectValue("email", "bad"); 
//			}
//		}
//		
//		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "required");
//		ValidationUtils.rejectIfEmpty(errors, "password", "required");
//		ValidationUtils.rejectIfEmpty(errors, "confirmPassword", "required");
//		
//		if(!regReq.getPassword().isEmpty()) {
//			if(!regReq.isPasswordEqualToConfirmPassword()) {
//				errors.rejectValue("confirmPassword", "nomatch");
//			}
//		}
//		
//		
//		
//	}

}
