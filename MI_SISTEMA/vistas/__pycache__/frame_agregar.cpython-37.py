B
    v��^�  �               @   s*   d dl T d dl mZ G dd� dej�ZdS )�    )�*)�ttkc                   s   e Zd Z� fdd�Z�  ZS )�VistaAgregarc                sl  t � j||� � fdd�}t� ddd�jdddd�� _t� d	d
�jddd� t� dd�� _� jjddd� t� dd
�jddd� t� dd�� _� jjddd� t� dd
�jddd� t� dd�� _� jjddd� t� dd
�jddd� t� dd�� _	� j	jddd� t� dd
�jddd� t� dd�� _
� j
jddd� t� d|d�jddd� t� dd
�jddd� d S )Nc                  sJ   � j jdd� � jjdd� � jjdd� � jjdd� � jjdd� d S )N�normal)�state)�entry_nombre�config�entry_altura�entry_hojas�
entry_raiz�entry_clima� )�selfr   �Bc:\Users\peluc\OneDrive\Desktop\MI_SISTEMA\vistas\frame_agregar.py�
BotonNuevo   s
    z)VistaAgregar.__init__.<locals>.BotonNuevozRegistrar nuevo arbol)zArial Black�   )�textZfontr   �   )�row�columnZ
columnspanzNombre arbol:)r   �   )r   r   �readonly)r   zAltura:zTipo de hojas:�   z
Tipo raiz:�   zTipo clima:�   ZNUEVO)r   �command�   ZGUARDAR)�super�__init__�Label�gridZLabel_title�Entryr   r	   r
   r   r   �Button)r   �args�kwargsr   )�	__class__)r   r   r      s(    zVistaAgregar.__init__)�__name__�
__module__�__qualname__r   �__classcell__r   r   )r%   r   r      s   r   N)�tkinterr   �Framer   r   r   r   r   �<module>   s   