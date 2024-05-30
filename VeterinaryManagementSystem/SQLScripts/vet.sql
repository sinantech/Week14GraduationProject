PGDMP                      |         
   veterinary    16.2    16.2 V    F           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            G           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            H           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            I           1262    33107 
   veterinary    DATABASE     �   CREATE DATABASE veterinary WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE veterinary;
                postgres    false            �            1259    109559    animals    TABLE     W  CREATE TABLE public.animals (
    animal_id bigint NOT NULL,
    animal_breed character varying(255),
    animal_colour character varying(255),
    animal_date_of_birth date,
    animal_gender character varying(255),
    animal_name character varying(255),
    animal_species character varying(255),
    animal_customer_id integer NOT NULL
);
    DROP TABLE public.animals;
       public         heap    postgres    false            �            1259    109558    animals_animal_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.animals_animal_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.animals_animal_customer_id_seq;
       public          postgres    false    217            J           0    0    animals_animal_customer_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.animals_animal_customer_id_seq OWNED BY public.animals.animal_customer_id;
          public          postgres    false    216            �            1259    109557    animals_animal_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.animals_animal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.animals_animal_id_seq;
       public          postgres    false    217            K           0    0    animals_animal_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.animals_animal_id_seq OWNED BY public.animals.animal_id;
          public          postgres    false    215            �            1259    109571    appointments    TABLE        CREATE TABLE public.appointments (
    appointment_id bigint NOT NULL,
    appointment_date timestamp(6) without time zone,
    appointment_animal_id integer NOT NULL,
    appointment_available_date_id bigint,
    appointment_doctor_id integer NOT NULL
);
     DROP TABLE public.appointments;
       public         heap    postgres    false            �            1259    109569 &   appointments_appointment_animal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.appointments_appointment_animal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.appointments_appointment_animal_id_seq;
       public          postgres    false    221            L           0    0 &   appointments_appointment_animal_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.appointments_appointment_animal_id_seq OWNED BY public.appointments.appointment_animal_id;
          public          postgres    false    219            �            1259    109570 &   appointments_appointment_doctor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.appointments_appointment_doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.appointments_appointment_doctor_id_seq;
       public          postgres    false    221            M           0    0 &   appointments_appointment_doctor_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.appointments_appointment_doctor_id_seq OWNED BY public.appointments.appointment_doctor_id;
          public          postgres    false    220            �            1259    109568    appointments_appointment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.appointments_appointment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.appointments_appointment_id_seq;
       public          postgres    false    221            N           0    0    appointments_appointment_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.appointments_appointment_id_seq OWNED BY public.appointments.appointment_id;
          public          postgres    false    218            �            1259    109581    available_date    TABLE     �   CREATE TABLE public.available_date (
    available_date_id bigint NOT NULL,
    available_date date,
    available_date_doctor_id integer NOT NULL
);
 "   DROP TABLE public.available_date;
       public         heap    postgres    false            �            1259    109580 +   available_date_available_date_doctor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.available_date_available_date_doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.available_date_available_date_doctor_id_seq;
       public          postgres    false    224            O           0    0 +   available_date_available_date_doctor_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.available_date_available_date_doctor_id_seq OWNED BY public.available_date.available_date_doctor_id;
          public          postgres    false    223            �            1259    109579 $   available_date_available_date_id_seq    SEQUENCE     �   CREATE SEQUENCE public.available_date_available_date_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.available_date_available_date_id_seq;
       public          postgres    false    224            P           0    0 $   available_date_available_date_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.available_date_available_date_id_seq OWNED BY public.available_date.available_date_id;
          public          postgres    false    222            �            1259    109589 	   customers    TABLE       CREATE TABLE public.customers (
    customer_id bigint NOT NULL,
    customer_address character varying(255),
    customer_city character varying(255),
    customer_mail character varying(255),
    customer_name character varying(255),
    customer_phone character varying(255)
);
    DROP TABLE public.customers;
       public         heap    postgres    false            �            1259    109588    customers_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customers_customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.customers_customer_id_seq;
       public          postgres    false    226            Q           0    0    customers_customer_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;
          public          postgres    false    225            �            1259    109598    doctors    TABLE       CREATE TABLE public.doctors (
    doctor_id bigint NOT NULL,
    doctor_address character varying(255),
    doctor_city character varying(255),
    doctor_mail character varying(255),
    doctor_name character varying(255),
    doctor_phone character varying(255)
);
    DROP TABLE public.doctors;
       public         heap    postgres    false            �            1259    109597    doctors_doctor_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.doctors_doctor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.doctors_doctor_id_seq;
       public          postgres    false    228            R           0    0    doctors_doctor_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.doctors_doctor_id_seq OWNED BY public.doctors.doctor_id;
          public          postgres    false    227            �            1259    109606 
   user_roles    TABLE     �   CREATE TABLE public.user_roles (
    user_id bigint NOT NULL,
    roles character varying(255),
    CONSTRAINT user_roles_roles_check CHECK (((roles)::text = 'MODERATOR'::text))
);
    DROP TABLE public.user_roles;
       public         heap    postgres    false            �            1259    109611    users    TABLE       CREATE TABLE public.users (
    id bigint NOT NULL,
    account_non_expired boolean NOT NULL,
    account_non_locked boolean NOT NULL,
    credentials_non_expired boolean NOT NULL,
    enabled boolean NOT NULL,
    password character varying(255),
    username character varying(255)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    109610    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    231            S           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    230            �            1259    109621    vaccines    TABLE     	  CREATE TABLE public.vaccines (
    vaccine_id bigint NOT NULL,
    vaccine_code character varying(255),
    vaccine_protection_end_date date,
    vaccine_name character varying(255),
    vaccine_protection_start_date date,
    vaccine_animal_id integer NOT NULL
);
    DROP TABLE public.vaccines;
       public         heap    postgres    false            �            1259    109620    vaccines_vaccine_animal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vaccines_vaccine_animal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.vaccines_vaccine_animal_id_seq;
       public          postgres    false    234            T           0    0    vaccines_vaccine_animal_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.vaccines_vaccine_animal_id_seq OWNED BY public.vaccines.vaccine_animal_id;
          public          postgres    false    233            �            1259    109619    vaccines_vaccine_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vaccines_vaccine_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.vaccines_vaccine_id_seq;
       public          postgres    false    234            U           0    0    vaccines_vaccine_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.vaccines_vaccine_id_seq OWNED BY public.vaccines.vaccine_id;
          public          postgres    false    232            w           2604    109562    animals animal_id    DEFAULT     v   ALTER TABLE ONLY public.animals ALTER COLUMN animal_id SET DEFAULT nextval('public.animals_animal_id_seq'::regclass);
 @   ALTER TABLE public.animals ALTER COLUMN animal_id DROP DEFAULT;
       public          postgres    false    215    217    217            x           2604    109563    animals animal_customer_id    DEFAULT     �   ALTER TABLE ONLY public.animals ALTER COLUMN animal_customer_id SET DEFAULT nextval('public.animals_animal_customer_id_seq'::regclass);
 I   ALTER TABLE public.animals ALTER COLUMN animal_customer_id DROP DEFAULT;
       public          postgres    false    217    216    217            y           2604    109574    appointments appointment_id    DEFAULT     �   ALTER TABLE ONLY public.appointments ALTER COLUMN appointment_id SET DEFAULT nextval('public.appointments_appointment_id_seq'::regclass);
 J   ALTER TABLE public.appointments ALTER COLUMN appointment_id DROP DEFAULT;
       public          postgres    false    221    218    221            z           2604    109575 "   appointments appointment_animal_id    DEFAULT     �   ALTER TABLE ONLY public.appointments ALTER COLUMN appointment_animal_id SET DEFAULT nextval('public.appointments_appointment_animal_id_seq'::regclass);
 Q   ALTER TABLE public.appointments ALTER COLUMN appointment_animal_id DROP DEFAULT;
       public          postgres    false    221    219    221            {           2604    109576 "   appointments appointment_doctor_id    DEFAULT     �   ALTER TABLE ONLY public.appointments ALTER COLUMN appointment_doctor_id SET DEFAULT nextval('public.appointments_appointment_doctor_id_seq'::regclass);
 Q   ALTER TABLE public.appointments ALTER COLUMN appointment_doctor_id DROP DEFAULT;
       public          postgres    false    221    220    221            |           2604    109584     available_date available_date_id    DEFAULT     �   ALTER TABLE ONLY public.available_date ALTER COLUMN available_date_id SET DEFAULT nextval('public.available_date_available_date_id_seq'::regclass);
 O   ALTER TABLE public.available_date ALTER COLUMN available_date_id DROP DEFAULT;
       public          postgres    false    222    224    224            }           2604    109585 '   available_date available_date_doctor_id    DEFAULT     �   ALTER TABLE ONLY public.available_date ALTER COLUMN available_date_doctor_id SET DEFAULT nextval('public.available_date_available_date_doctor_id_seq'::regclass);
 V   ALTER TABLE public.available_date ALTER COLUMN available_date_doctor_id DROP DEFAULT;
       public          postgres    false    224    223    224            ~           2604    109592    customers customer_id    DEFAULT     ~   ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);
 D   ALTER TABLE public.customers ALTER COLUMN customer_id DROP DEFAULT;
       public          postgres    false    225    226    226                       2604    109601    doctors doctor_id    DEFAULT     v   ALTER TABLE ONLY public.doctors ALTER COLUMN doctor_id SET DEFAULT nextval('public.doctors_doctor_id_seq'::regclass);
 @   ALTER TABLE public.doctors ALTER COLUMN doctor_id DROP DEFAULT;
       public          postgres    false    228    227    228            �           2604    109614    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    109624    vaccines vaccine_id    DEFAULT     z   ALTER TABLE ONLY public.vaccines ALTER COLUMN vaccine_id SET DEFAULT nextval('public.vaccines_vaccine_id_seq'::regclass);
 B   ALTER TABLE public.vaccines ALTER COLUMN vaccine_id DROP DEFAULT;
       public          postgres    false    234    232    234            �           2604    109625    vaccines vaccine_animal_id    DEFAULT     �   ALTER TABLE ONLY public.vaccines ALTER COLUMN vaccine_animal_id SET DEFAULT nextval('public.vaccines_vaccine_animal_id_seq'::regclass);
 I   ALTER TABLE public.vaccines ALTER COLUMN vaccine_animal_id DROP DEFAULT;
       public          postgres    false    234    233    234            2          0    109559    animals 
   TABLE DATA           �   COPY public.animals (animal_id, animal_breed, animal_colour, animal_date_of_birth, animal_gender, animal_name, animal_species, animal_customer_id) FROM stdin;
    public          postgres    false    217   ]l       6          0    109571    appointments 
   TABLE DATA           �   COPY public.appointments (appointment_id, appointment_date, appointment_animal_id, appointment_available_date_id, appointment_doctor_id) FROM stdin;
    public          postgres    false    221   �l       9          0    109581    available_date 
   TABLE DATA           e   COPY public.available_date (available_date_id, available_date, available_date_doctor_id) FROM stdin;
    public          postgres    false    224   �l       ;          0    109589 	   customers 
   TABLE DATA              COPY public.customers (customer_id, customer_address, customer_city, customer_mail, customer_name, customer_phone) FROM stdin;
    public          postgres    false    226   m       =          0    109598    doctors 
   TABLE DATA           q   COPY public.doctors (doctor_id, doctor_address, doctor_city, doctor_mail, doctor_name, doctor_phone) FROM stdin;
    public          postgres    false    228   dm       >          0    109606 
   user_roles 
   TABLE DATA           4   COPY public.user_roles (user_id, roles) FROM stdin;
    public          postgres    false    229   �m       @          0    109611    users 
   TABLE DATA           �   COPY public.users (id, account_non_expired, account_non_locked, credentials_non_expired, enabled, password, username) FROM stdin;
    public          postgres    false    231   �m       C          0    109621    vaccines 
   TABLE DATA           �   COPY public.vaccines (vaccine_id, vaccine_code, vaccine_protection_end_date, vaccine_name, vaccine_protection_start_date, vaccine_animal_id) FROM stdin;
    public          postgres    false    234   ?n       V           0    0    animals_animal_customer_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.animals_animal_customer_id_seq', 1, false);
          public          postgres    false    216            W           0    0    animals_animal_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.animals_animal_id_seq', 1, true);
          public          postgres    false    215            X           0    0 &   appointments_appointment_animal_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.appointments_appointment_animal_id_seq', 1, false);
          public          postgres    false    219            Y           0    0 &   appointments_appointment_doctor_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.appointments_appointment_doctor_id_seq', 1, false);
          public          postgres    false    220            Z           0    0    appointments_appointment_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.appointments_appointment_id_seq', 2, true);
          public          postgres    false    218            [           0    0 +   available_date_available_date_doctor_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.available_date_available_date_doctor_id_seq', 1, false);
          public          postgres    false    223            \           0    0 $   available_date_available_date_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.available_date_available_date_id_seq', 2, true);
          public          postgres    false    222            ]           0    0    customers_customer_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.customers_customer_id_seq', 1, true);
          public          postgres    false    225            ^           0    0    doctors_doctor_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.doctors_doctor_id_seq', 1, true);
          public          postgres    false    227            _           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 1, true);
          public          postgres    false    230            `           0    0    vaccines_vaccine_animal_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.vaccines_vaccine_animal_id_seq', 1, false);
          public          postgres    false    233            a           0    0    vaccines_vaccine_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.vaccines_vaccine_id_seq', 1, true);
          public          postgres    false    232            �           2606    109567    animals animals_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.animals
    ADD CONSTRAINT animals_pkey PRIMARY KEY (animal_id);
 >   ALTER TABLE ONLY public.animals DROP CONSTRAINT animals_pkey;
       public            postgres    false    217            �           2606    109578    appointments appointments_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (appointment_id);
 H   ALTER TABLE ONLY public.appointments DROP CONSTRAINT appointments_pkey;
       public            postgres    false    221            �           2606    109587 "   available_date available_date_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.available_date
    ADD CONSTRAINT available_date_pkey PRIMARY KEY (available_date_id);
 L   ALTER TABLE ONLY public.available_date DROP CONSTRAINT available_date_pkey;
       public            postgres    false    224            �           2606    109596    customers customers_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    226            �           2606    109605    doctors doctors_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_pkey PRIMARY KEY (doctor_id);
 >   ALTER TABLE ONLY public.doctors DROP CONSTRAINT doctors_pkey;
       public            postgres    false    228            �           2606    109631 &   customers uk_5vhox5jsqitujs1k7bcsb2rj8 
   CONSTRAINT     j   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT uk_5vhox5jsqitujs1k7bcsb2rj8 UNIQUE (customer_mail);
 P   ALTER TABLE ONLY public.customers DROP CONSTRAINT uk_5vhox5jsqitujs1k7bcsb2rj8;
       public            postgres    false    226            �           2606    109637 $   doctors uk_7s4l7559eox2hor73b3qp3vq2 
   CONSTRAINT     g   ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT uk_7s4l7559eox2hor73b3qp3vq2 UNIQUE (doctor_phone);
 N   ALTER TABLE ONLY public.doctors DROP CONSTRAINT uk_7s4l7559eox2hor73b3qp3vq2;
       public            postgres    false    228            �           2606    109635 $   doctors uk_amsyrdrr2f0d48ciy29o9hvjm 
   CONSTRAINT     f   ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT uk_amsyrdrr2f0d48ciy29o9hvjm UNIQUE (doctor_mail);
 N   ALTER TABLE ONLY public.doctors DROP CONSTRAINT uk_amsyrdrr2f0d48ciy29o9hvjm;
       public            postgres    false    228            �           2606    109633 &   customers uk_bn3wq4vhuqco545y52xp96gqd 
   CONSTRAINT     k   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT uk_bn3wq4vhuqco545y52xp96gqd UNIQUE (customer_phone);
 P   ALTER TABLE ONLY public.customers DROP CONSTRAINT uk_bn3wq4vhuqco545y52xp96gqd;
       public            postgres    false    226            �           2606    109618    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    231            �           2606    109629    vaccines vaccines_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.vaccines
    ADD CONSTRAINT vaccines_pkey PRIMARY KEY (vaccine_id);
 @   ALTER TABLE ONLY public.vaccines DROP CONSTRAINT vaccines_pkey;
       public            postgres    false    234            �           2606    109653 '   appointments fk27d0xcbajwaeeun2doojsae4    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT fk27d0xcbajwaeeun2doojsae4 FOREIGN KEY (appointment_doctor_id) REFERENCES public.doctors(doctor_id);
 Q   ALTER TABLE ONLY public.appointments DROP CONSTRAINT fk27d0xcbajwaeeun2doojsae4;
       public          postgres    false    228    4753    221            �           2606    109648 (   appointments fk8aap9xrqwpgumlausf5kw3jwe    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT fk8aap9xrqwpgumlausf5kw3jwe FOREIGN KEY (appointment_available_date_id) REFERENCES public.available_date(available_date_id);
 R   ALTER TABLE ONLY public.appointments DROP CONSTRAINT fk8aap9xrqwpgumlausf5kw3jwe;
       public          postgres    false    221    224    4745            �           2606    109668 $   vaccines fkekhfjmpsduds8nnilqe9b467v    FK CONSTRAINT     �   ALTER TABLE ONLY public.vaccines
    ADD CONSTRAINT fkekhfjmpsduds8nnilqe9b467v FOREIGN KEY (vaccine_animal_id) REFERENCES public.animals(animal_id);
 N   ALTER TABLE ONLY public.vaccines DROP CONSTRAINT fkekhfjmpsduds8nnilqe9b467v;
       public          postgres    false    4741    217    234            �           2606    109663 &   user_roles fkhfh9dx7w3ubf1co1vdev94g3f    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT fkhfh9dx7w3ubf1co1vdev94g3f FOREIGN KEY (user_id) REFERENCES public.users(id);
 P   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT fkhfh9dx7w3ubf1co1vdev94g3f;
       public          postgres    false    229    4759    231            �           2606    109638 #   animals fknjsvd8kplxqmf48ybxayrx6ru    FK CONSTRAINT     �   ALTER TABLE ONLY public.animals
    ADD CONSTRAINT fknjsvd8kplxqmf48ybxayrx6ru FOREIGN KEY (animal_customer_id) REFERENCES public.customers(customer_id);
 M   ALTER TABLE ONLY public.animals DROP CONSTRAINT fknjsvd8kplxqmf48ybxayrx6ru;
       public          postgres    false    217    4747    226            �           2606    109643 (   appointments fko4t945rb708af9ry6syof7bwt    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT fko4t945rb708af9ry6syof7bwt FOREIGN KEY (appointment_animal_id) REFERENCES public.animals(animal_id);
 R   ALTER TABLE ONLY public.appointments DROP CONSTRAINT fko4t945rb708af9ry6syof7bwt;
       public          postgres    false    221    4741    217            �           2606    109658 *   available_date fkpaalwgfslp8gdi9ep8q8al16w    FK CONSTRAINT     �   ALTER TABLE ONLY public.available_date
    ADD CONSTRAINT fkpaalwgfslp8gdi9ep8q8al16w FOREIGN KEY (available_date_doctor_id) REFERENCES public.doctors(doctor_id);
 T   ALTER TABLE ONLY public.available_date DROP CONSTRAINT fkpaalwgfslp8gdi9ep8q8al16w;
       public          postgres    false    228    4753    224            2   6   x�3�t�O���,I�4202�50"N�ĜT��Ģ΀̒�ҜNC�=... 3C;      6   /   x�3�4202�50�50S04�26�20�4A.#����P.F��� >�	�      9   !   x�3�4202�50�50�4�2�r� �=... gNy      ;   A   x�3�<���$1/�4G�71�$� !��ꐞ��������镚����Z�i`	& ����� ���      =   >   x�3��,.I�K*���M�)I-H�p椦:��&f��%��r���*���p��C!W� �g      >      x�3���wqr������ $�      @   T   x�3�,�B�DCw�����t������4'7/�� ��pw�\s��P'7sc��'�*�������R�Ĥ��l�=... ��      C   &   x�3�t�4202�50�54�t���,8�b���� ���     