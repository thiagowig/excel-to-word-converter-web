package convert.excel.to.word.web

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

import java.io.File

import org.apache.commons.io.IOUtils;

import br.com.zaul.converter.executor.ScriptExecutor;

class FileController {

    static allowedMethods = [save: "POST", update: "PUT"]

    def index(Integer max) {
    }
	
	def upload() {
		def file = request.getFile("myFile")
		
		if (file.empty) {
			flash.message = 'The file cannot be empty'
			
		} else {
			def zipFile = convertFile(file.getFileItem().getTempFile())			
			
			response.setContentType("application/octet-stream")
			response.setHeader("Content-disposition", "filename=${zipFile.name}")
			response.outputStream << zipFile.bytes
			return
		}
		
		render(view: 'index')
	}
	
	File convertFile(File file) {
		def scriptExecutor = new ScriptExecutor();
		
		scriptExecutor.execute(file);
	}
}
