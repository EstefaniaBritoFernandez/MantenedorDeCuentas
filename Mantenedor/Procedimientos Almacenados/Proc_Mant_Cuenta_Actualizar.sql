USE Mantenedor;
GO

ALTER PROCEDURE MANT_CUENTA_ACTUALIZAR  
    @ID_CUENTA INT,  
    @CTA_NOMBRE VARCHAR(250),  
    @EMPRESA_NOMBRE VARCHAR(MAX),  
    @CLIENTE_DESCRIPCION VARCHAR(MAX),  
    @CTA_COMUNA VARCHAR(350),  
    @CTA_DIRECCION VARCHAR(350),  
    @CTA_RUT VARCHAR(15),  
    @CTA_MAIL VARCHAR(250),  
    @CLIENTE_AUTOID NUMERIC(18,0), 
    @EMPRESA_AUTOID NUMERIC(18,0)  
AS  
BEGIN  
    SET NOCOUNT ON;  
      
    BEGIN TRY  
        BEGIN TRANSACTION;  
          
        IF NOT EXISTS (SELECT 1 FROM CUENTA WHERE ID_CUENTA = @ID_CUENTA)  
        BEGIN  
            RAISERROR('La cuenta con ID %d no existe', 16, 1, @ID_CUENTA);  
            RETURN;  
        END  
        
        UPDATE CUENTA  
        SET   
            CTA_NOMBRE = @CTA_NOMBRE,  
            EMPRESA_NOMBRE = @EMPRESA_NOMBRE,  
            CLIENTE_DESCRIPCION = @CLIENTE_DESCRIPCION,  
            CTA_RUT = @CTA_RUT,  
            CTA_DIRECCION = @CTA_DIRECCION,  
            CTA_COMUNA = @CTA_COMUNA,  
            CTA_MAIL = @CTA_MAIL,  
            CLIENTE_AUTOID = @CLIENTE_AUTOID, 
            EMPRESA_AUTOID = @EMPRESA_AUTOID  
        WHERE ID_CUENTA = @ID_CUENTA;  
          
        COMMIT TRANSACTION;  
          
        SELECT 'Cuenta actualizada correctamente' AS Mensaje, @ID_CUENTA AS ID_CUENTA;  
          
    END TRY  
    BEGIN CATCH  
        IF @@TRANCOUNT > 0  
            ROLLBACK TRANSACTION;  
              
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();  
        RAISERROR(@ErrorMessage, 16, 1);  
    END CATCH  
END
GO