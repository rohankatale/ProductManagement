PGDMP  
                    |            dbrest    16.3    16.3     	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    dbrest    DATABASE     h   CREATE DATABASE dbrest WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE dbrest;
                postgres    false            �            1259    16422    product    TABLE     �   CREATE TABLE public.product (
    id integer NOT NULL,
    productname text,
    producttype text,
    productplace text,
    productwarranty integer
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    16421    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    216                       0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    215            s           2604    16425 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216                      0    16422    product 
   TABLE DATA           ^   COPY public.product (id, productname, producttype, productplace, productwarranty) FROM stdin;
    public          postgres    false    216   �
                  0    0    product_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.product_id_seq', 9, true);
          public          postgres    false    215            u           2606    16429    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    216               �   x�m���0D�s?�h)>�&.�ܔRb��6�H�{F��v���lp���dn�THPF|R�3k!H���w��&3��2��s�$���su�`�[��0��<�:���y�1{�8.pN;ؠ*�I����m���6����%p�u�@0~a�tY���W7     