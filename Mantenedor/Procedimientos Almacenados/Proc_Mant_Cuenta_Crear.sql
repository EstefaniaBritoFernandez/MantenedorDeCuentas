ALTER PROCEDURE MANT_CUENTA_CREAR  
    @CTA_NOMBRE VARCHAR(250),  
    @EMPRESA_NOMBRE VARCHAR(MAX),  
    @CLIENTE_DESCRIPCION VARCHAR(MAX),  
    @CTA_COMUNA VARCHAR(350),  
    @CTA_DIRECCION VARCHAR(350),  
    @CTA_RUT VARCHAR(15),  
    @CTA_MAIL VARCHAR(250),  
    @CTA_ESTADO BIT,  
    @CLIENTE_AUTOID NUMERIC(18,0), 
    @EMPRESA_AUTOID NUMERIC(18,0), 
    @ID_CUENTA INT OUTPUT  
AS  
BEGIN  
    SET NOCOUNT ON;  
      
    BEGIN TRY  
        BEGIN TRANSACTION;  
          
        INSERT INTO CUENTA (  
            CTA_NOMBRE,   
            EMPRESA_NOMBRE,  
            CLIENTE_DESCRIPCION,  
            CTA_COMUNA,  
            CTA_DIRECCION,  
            CTA_RUT,   
            CTA_MAIL,  
            CTA_ESTADO,  
            CLIENTE_AUTOID,  
            EMPRESA_AUTOID  
        )  
        VALUES (  
            @CTA_NOMBRE,   
            @EMPRESA_NOMBRE,  
            @CLIENTE_DESCRIPCION,  
            @CTA_COMUNA,  
            @CTA_DIRECCION,  
            @CTA_RUT,   
            @CTA_MAIL,  
            1,  
            @CLIENTE_AUTOID,    
            @EMPRESA_AUTOID  
        );  
          
        SET @ID_CUENTA = SCOPE_IDENTITY();  
          
        COMMIT TRANSACTION;  
          
    END TRY  
    BEGIN CATCH  
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;  
             
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();  
        RAISERROR(@ErrorMessage, 16, 1);  
    END CATCH  
END
GO