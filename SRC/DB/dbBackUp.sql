PGDMP  )                    }         
   Valente_DB    17.2    17.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    41030 
   Valente_DB    DATABASE     �   CREATE DATABASE "Valente_DB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Costa Rica.1252';
    DROP DATABASE "Valente_DB";
                     postgres    false            �            1259    41113 	   monitoreo    TABLE       CREATE TABLE public.monitoreo (
    id integer NOT NULL,
    proximidad boolean,
    distancia real,
    sonido integer,
    humedad integer,
    temperatura integer,
    fuego integer,
    luz integer,
    fecha timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.monitoreo;
       public         heap r       postgres    false            �            1259    41112    monitoreo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.monitoreo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.monitoreo_id_seq;
       public               postgres    false    220            �           0    0    monitoreo_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.monitoreo_id_seq OWNED BY public.monitoreo.id;
          public               postgres    false    219            �            1259    41063 
   monitorieo    TABLE       CREATE TABLE public.monitorieo (
    id integer NOT NULL,
    proximidad integer,
    distancia real,
    sonido integer,
    humedad integer,
    temperatura integer,
    fuego integer,
    luz integer,
    fecha timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.monitorieo;
       public         heap r       postgres    false            �            1259    41062    monitorieo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.monitorieo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.monitorieo_id_seq;
       public               postgres    false    218            �           0    0    monitorieo_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.monitorieo_id_seq OWNED BY public.monitorieo.id;
          public               postgres    false    217            (           2604    41116    monitoreo id    DEFAULT     l   ALTER TABLE ONLY public.monitoreo ALTER COLUMN id SET DEFAULT nextval('public.monitoreo_id_seq'::regclass);
 ;   ALTER TABLE public.monitoreo ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    219    220    220            &           2604    41066    monitorieo id    DEFAULT     n   ALTER TABLE ONLY public.monitorieo ALTER COLUMN id SET DEFAULT nextval('public.monitorieo_id_seq'::regclass);
 <   ALTER TABLE public.monitorieo ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217    218            �          0    41113 	   monitoreo 
   TABLE DATA           o   COPY public.monitoreo (id, proximidad, distancia, sonido, humedad, temperatura, fuego, luz, fecha) FROM stdin;
    public               postgres    false    220   �       �          0    41063 
   monitorieo 
   TABLE DATA           p   COPY public.monitorieo (id, proximidad, distancia, sonido, humedad, temperatura, fuego, luz, fecha) FROM stdin;
    public               postgres    false    218   s       �           0    0    monitoreo_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.monitoreo_id_seq', 10, true);
          public               postgres    false    219            �           0    0    monitorieo_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.monitorieo_id_seq', 1, false);
          public               postgres    false    217            -           2606    41119    monitoreo monitoreo_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.monitoreo
    ADD CONSTRAINT monitoreo_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.monitoreo DROP CONSTRAINT monitoreo_pkey;
       public                 postgres    false    220            +           2606    41069    monitorieo monitorieo_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.monitorieo
    ADD CONSTRAINT monitorieo_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.monitorieo DROP CONSTRAINT monitorieo_pkey;
       public                 postgres    false    218            �   l   x�mͱ1C�Z�"�@ђ-{����ة�T��?�#�,)���ܛS�~9_�\�xhmQ��M�x��9P�:OV�D<�/Q��]G�#�7�v��g��MU��z"y      �      x������ � �     