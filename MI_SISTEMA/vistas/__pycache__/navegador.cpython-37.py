B
    p��^  �               @   sB   d dl T d dl mZ d dlT d dlT d dlT G dd� dej�ZdS )�    )�*)�ttkc                   s   e Zd Z� fdd�Z�  ZS )�
aplicacionc                s:  t � �|� || _| j�d� | j�d� | jjdd� t�| j�| _t	| jdd�| _
| j
jddd� t| jd	d
�| _| jj| j
dd
� t| j�| _| jj| jdd
� t| jdd
�| _| jj| jdd
� t| j�| _| jj| jdd
� t	| jdd�}|jddd� t|jdd
�|_|jj|jdd
� | j��  | ��  d S )NzConsulta de arboleszimg/logo-ipn.ico�white)�
background)ZbgZ880Z600)�width�heightzPagina de inicio)�textZIncioZAgregarzPagina de registro ZRegistroZARBOLzsuelo y sus IDZSuelo)�super�__init__Z
mi_ventana�title�
iconbitmap�	configurer   �NotebookZ	navegador�FrameZini�config�LabelZinicio�addZVistaAgregarZreg_agregarZreg_registroZ
VistaArbolZ	reg_arbolZ	reg_suelo�pack)�self�ventana�frame)�	__class__� �>c:\Users\peluc\OneDrive\Desktop\MI_SISTEMA\vistas\navegador.pyr      s,    
zaplicacion.__init__)�__name__�
__module__�__qualname__r   �__classcell__r   r   )r   r   r      s   r   N)�tkinterr   Zvistas.frame_agregarZvistas.ARBOLZvistas.frame_suelor   r   r   r   r   r   �<module>   s
   