<%@ page import="convert.excel.to.word.web.Aluno" %>



<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'cpf', 'error')} ">
	<label for="cpf">
		<g:message code="aluno.cpf.label" default="Cpf" />
		
	</label>
	<g:textField name="cpf" value="${alunoInstance?.cpf}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'idade', 'error')} required">
	<label for="idade">
		<g:message code="aluno.idade.label" default="Idade" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idade" type="number" value="${alunoInstance.idade}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="aluno.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${alunoInstance?.nome}"/>
</div>

