PGDMP     !                     {            ccrporativo    14.0    14.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    44151    ccrporativo    DATABASE     k   CREATE DATABASE ccrporativo WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE ccrporativo;
                postgres    false                        2615    44152    geral    SCHEMA        CREATE SCHEMA geral;
    DROP SCHEMA geral;
                postgres    false                        2615    44153    rh    SCHEMA        CREATE SCHEMA rh;
    DROP SCHEMA rh;
                postgres    false                        2615    44154    vendas    SCHEMA        CREATE SCHEMA vendas;
    DROP SCHEMA vendas;
                postgres    false            �            1259    44232    bairro    TABLE     t   CREATE TABLE geral.bairro (
    id integer NOT NULL,
    id_cidade integer NOT NULL,
    descricao text NOT NULL
);
    DROP TABLE geral.bairro;
       geral         heap    postgres    false    5            �            1259    44231    bairro_id_seq    SEQUENCE     �   CREATE SEQUENCE geral.bairro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE geral.bairro_id_seq;
       geral          postgres    false    219    5            �           0    0    bairro_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE geral.bairro_id_seq OWNED BY geral.bairro.id;
          geral          postgres    false    218            �            1259    44241    cidade    TABLE     t   CREATE TABLE geral.cidade (
    id integer NOT NULL,
    id_estado integer NOT NULL,
    descricao text NOT NULL
);
    DROP TABLE geral.cidade;
       geral         heap    postgres    false    5            �            1259    44240    cidade_id_seq    SEQUENCE     �   CREATE SEQUENCE geral.cidade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE geral.cidade_id_seq;
       geral          postgres    false    5    221            �           0    0    cidade_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE geral.cidade_id_seq OWNED BY geral.cidade.id;
          geral          postgres    false    220            �            1259    44259    contato    TABLE     �   CREATE TABLE geral.contato (
    id integer NOT NULL,
    id_tipo_contato integer NOT NULL,
    id_pessoa integer NOT NULL,
    valor text NOT NULL,
    principal boolean NOT NULL
);
    DROP TABLE geral.contato;
       geral         heap    postgres    false    5            �            1259    44258    contato_id_seq    SEQUENCE     �   CREATE SEQUENCE geral.contato_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE geral.contato_id_seq;
       geral          postgres    false    225    5            �           0    0    contato_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE geral.contato_id_seq OWNED BY geral.contato.id;
          geral          postgres    false    224            �            1259    44156    endereco    TABLE     �   CREATE TABLE geral.endereco (
    id integer NOT NULL,
    id_pessoa integer NOT NULL,
    id_bairro integer NOT NULL,
    rua text NOT NULL,
    numero text NOT NULL,
    cep text NOT NULL,
    complemento text NOT NULL
);
    DROP TABLE geral.endereco;
       geral         heap    postgres    false    5            �            1259    44155    endereco_id_seq    SEQUENCE     �   CREATE SEQUENCE geral.endereco_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE geral.endereco_id_seq;
       geral          postgres    false    213    5            �           0    0    endereco_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE geral.endereco_id_seq OWNED BY geral.endereco.id;
          geral          postgres    false    212            �            1259    44250    estado    TABLE     m   CREATE TABLE geral.estado (
    id integer NOT NULL,
    sigla text NOT NULL,
    descricao text NOT NULL
);
    DROP TABLE geral.estado;
       geral         heap    postgres    false    5            �            1259    44249    estado_id_seq    SEQUENCE     �   CREATE SEQUENCE geral.estado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE geral.estado_id_seq;
       geral          postgres    false    5    223            �           0    0    estado_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE geral.estado_id_seq OWNED BY geral.estado.id;
          geral          postgres    false    222            �            1259    44358    pessoa    TABLE     l   CREATE TABLE geral.pessoa (
    id integer NOT NULL,
    data_cadastro timestamp with time zone NOT NULL
);
    DROP TABLE geral.pessoa;
       geral         heap    postgres    false    5            �            1259    44210    pessoa_fisica    TABLE     �   CREATE TABLE geral.pessoa_fisica (
    id integer NOT NULL,
    nome text NOT NULL,
    cpf text NOT NULL,
    nascimento timestamp with time zone NOT NULL
);
     DROP TABLE geral.pessoa_fisica;
       geral         heap    postgres    false    5            �            1259    44209    pessoa_fisica_id_seq    SEQUENCE     �   CREATE SEQUENCE geral.pessoa_fisica_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE geral.pessoa_fisica_id_seq;
       geral          postgres    false    215    5            �           0    0    pessoa_fisica_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE geral.pessoa_fisica_id_seq OWNED BY geral.pessoa_fisica.id;
          geral          postgres    false    214            �            1259    44357    pessoa_id_seq    SEQUENCE     �   CREATE SEQUENCE geral.pessoa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE geral.pessoa_id_seq;
       geral          postgres    false    248    5            �           0    0    pessoa_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE geral.pessoa_id_seq OWNED BY geral.pessoa.id;
          geral          postgres    false    247            �            1259    44221    pessoa_juridica    TABLE     x   CREATE TABLE geral.pessoa_juridica (
    id integer NOT NULL,
    razao_social text NOT NULL,
    cnpj text NOT NULL
);
 "   DROP TABLE geral.pessoa_juridica;
       geral         heap    postgres    false    5            �            1259    44220    pessoa_juridica_id_seq    SEQUENCE     �   CREATE SEQUENCE geral.pessoa_juridica_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE geral.pessoa_juridica_id_seq;
       geral          postgres    false    217    5            �           0    0    pessoa_juridica_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE geral.pessoa_juridica_id_seq OWNED BY geral.pessoa_juridica.id;
          geral          postgres    false    216            �            1259    44276    responsavel_juridico    TABLE     |   CREATE TABLE geral.responsavel_juridico (
    id_pessoa_fisica integer NOT NULL,
    id_pessoa_juridica integer NOT NULL
);
 '   DROP TABLE geral.responsavel_juridico;
       geral         heap    postgres    false    5            �            1259    44268    tipo_contato    TABLE     Z   CREATE TABLE geral.tipo_contato (
    id integer NOT NULL,
    descricao text NOT NULL
);
    DROP TABLE geral.tipo_contato;
       geral         heap    postgres    false    5            �            1259    44267    tipo_contato_id_seq    SEQUENCE     �   CREATE SEQUENCE geral.tipo_contato_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE geral.tipo_contato_id_seq;
       geral          postgres    false    227    5            �           0    0    tipo_contato_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE geral.tipo_contato_id_seq OWNED BY geral.tipo_contato.id;
          geral          postgres    false    226            �            1259    44292    cargo    TABLE     P   CREATE TABLE rh.cargo (
    id integer NOT NULL,
    descricao text NOT NULL
);
    DROP TABLE rh.cargo;
       rh         heap    postgres    false    6            �            1259    44291    cargo_id_seq    SEQUENCE     �   CREATE SEQUENCE rh.cargo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
    DROP SEQUENCE rh.cargo_id_seq;
       rh          postgres    false    6    232            �           0    0    cargo_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE rh.cargo_id_seq OWNED BY rh.cargo.id;
          rh          postgres    false    231            �            1259    44282    departamento    TABLE     W   CREATE TABLE rh.departamento (
    id integer NOT NULL,
    descricao text NOT NULL
);
    DROP TABLE rh.departamento;
       rh         heap    postgres    false    6            �            1259    44281    departamento_id_seq    SEQUENCE     �   CREATE SEQUENCE rh.departamento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE rh.departamento_id_seq;
       rh          postgres    false    6    230            �           0    0    departamento_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE rh.departamento_id_seq OWNED BY rh.departamento.id;
          rh          postgres    false    229            �            1259    44315    escolaridade    TABLE     W   CREATE TABLE rh.escolaridade (
    id integer NOT NULL,
    descricao text NOT NULL
);
    DROP TABLE rh.escolaridade;
       rh         heap    postgres    false    6            �            1259    44314    escolaridade_id_seq    SEQUENCE     �   CREATE SEQUENCE rh.escolaridade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE rh.escolaridade_id_seq;
       rh          postgres    false    238    6            �           0    0    escolaridade_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE rh.escolaridade_id_seq OWNED BY rh.escolaridade.id;
          rh          postgres    false    237            �            1259    44301    funcionario    TABLE     �   CREATE TABLE rh.funcionario (
    id integer NOT NULL,
    id_pessoa integer NOT NULL,
    id_escolaridade integer NOT NULL,
    pretensao_salarial numeric(18,2) NOT NULL,
    pcd boolean NOT NULL
);
    DROP TABLE rh.funcionario;
       rh         heap    postgres    false    6            �            1259    44300    funcionario_id_seq    SEQUENCE     �   CREATE SEQUENCE rh.funcionario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE rh.funcionario_id_seq;
       rh          postgres    false    234    6            �           0    0    funcionario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE rh.funcionario_id_seq OWNED BY rh.funcionario.id;
          rh          postgres    false    233            �            1259    44308    lotacao    TABLE     (  CREATE TABLE rh.lotacao (
    id integer NOT NULL,
    id_cargo integer NOT NULL,
    id_departamento integer NOT NULL,
    id_funcionario integer NOT NULL,
    data_cadastro timestamp with time zone NOT NULL,
    data_desligamento timestamp with time zone NOT NULL,
    salario numeric(18,2)
);
    DROP TABLE rh.lotacao;
       rh         heap    postgres    false    6            �            1259    44307    lotacao_id_seq    SEQUENCE     �   CREATE SEQUENCE rh.lotacao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE rh.lotacao_id_seq;
       rh          postgres    false    236    6            �           0    0    lotacao_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE rh.lotacao_id_seq OWNED BY rh.lotacao.id;
          rh          postgres    false    235            �            1259    44333 	   categoria    TABLE     X   CREATE TABLE vendas.categoria (
    id integer NOT NULL,
    descricao text NOT NULL
);
    DROP TABLE vendas.categoria;
       vendas         heap    postgres    false    8            �            1259    44332    categoria_id_seq    SEQUENCE     �   CREATE SEQUENCE vendas.categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE vendas.categoria_id_seq;
       vendas          postgres    false    8    242            �           0    0    categoria_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE vendas.categoria_id_seq OWNED BY vendas.categoria.id;
          vendas          postgres    false    241            �            1259    44342    forma_pagamento    TABLE     ^   CREATE TABLE vendas.forma_pagamento (
    id integer NOT NULL,
    descricao text NOT NULL
);
 #   DROP TABLE vendas.forma_pagamento;
       vendas         heap    postgres    false    8            �            1259    44341    forma_pagamento_id_seq    SEQUENCE     �   CREATE SEQUENCE vendas.forma_pagamento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE vendas.forma_pagamento_id_seq;
       vendas          postgres    false    8    244            �           0    0    forma_pagamento_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE vendas.forma_pagamento_id_seq OWNED BY vendas.forma_pagamento.id;
          vendas          postgres    false    243            �            1259    44351    item_nota_fiscal    TABLE     �   CREATE TABLE vendas.item_nota_fiscal (
    id integer NOT NULL,
    id_produto integer NOT NULL,
    id_nota_fiscal integer NOT NULL,
    quantidade integer NOT NULL,
    valor_venda_real numeric(18,2) NOT NULL
);
 $   DROP TABLE vendas.item_nota_fiscal;
       vendas         heap    postgres    false    8            �            1259    44350    item_nota_fiscal_id_seq    SEQUENCE     �   CREATE SEQUENCE vendas.item_nota_fiscal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE vendas.item_nota_fiscal_id_seq;
       vendas          postgres    false    246    8            �           0    0    item_nota_fiscal_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE vendas.item_nota_fiscal_id_seq OWNED BY vendas.item_nota_fiscal.id;
          vendas          postgres    false    245            �            1259    44366    nota_fiscal    TABLE     �   CREATE TABLE vendas.nota_fiscal (
    id integer NOT NULL,
    id_vendedor integer NOT NULL,
    id_cliente integer NOT NULL,
    id_forma_pagto integer NOT NULL,
    data_venda timestamp with time zone NOT NULL
);
    DROP TABLE vendas.nota_fiscal;
       vendas         heap    postgres    false    8            �            1259    44365    nota_fiscal_id_seq    SEQUENCE     �   CREATE SEQUENCE vendas.nota_fiscal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE vendas.nota_fiscal_id_seq;
       vendas          postgres    false    8    250            �           0    0    nota_fiscal_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE vendas.nota_fiscal_id_seq OWNED BY vendas.nota_fiscal.id;
          vendas          postgres    false    249            �            1259    44324    produto    TABLE     �   CREATE TABLE vendas.produto (
    id integer NOT NULL,
    id_fornecedor integer NOT NULL,
    id_categoria integer NOT NULL,
    nome text NOT NULL,
    valor_venda numeric(18,2) NOT NULL,
    valor_custo numeric(18,2) NOT NULL
);
    DROP TABLE vendas.produto;
       vendas         heap    postgres    false    8            �            1259    44323    produto_id_seq    SEQUENCE     �   CREATE SEQUENCE vendas.produto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE vendas.produto_id_seq;
       vendas          postgres    false    240    8            �           0    0    produto_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE vendas.produto_id_seq OWNED BY vendas.produto.id;
          vendas          postgres    false    239            �           2604    44235 	   bairro id    DEFAULT     d   ALTER TABLE ONLY geral.bairro ALTER COLUMN id SET DEFAULT nextval('geral.bairro_id_seq'::regclass);
 7   ALTER TABLE geral.bairro ALTER COLUMN id DROP DEFAULT;
       geral          postgres    false    218    219    219            �           2604    44244 	   cidade id    DEFAULT     d   ALTER TABLE ONLY geral.cidade ALTER COLUMN id SET DEFAULT nextval('geral.cidade_id_seq'::regclass);
 7   ALTER TABLE geral.cidade ALTER COLUMN id DROP DEFAULT;
       geral          postgres    false    220    221    221            �           2604    44262 
   contato id    DEFAULT     f   ALTER TABLE ONLY geral.contato ALTER COLUMN id SET DEFAULT nextval('geral.contato_id_seq'::regclass);
 8   ALTER TABLE geral.contato ALTER COLUMN id DROP DEFAULT;
       geral          postgres    false    224    225    225            �           2604    44159    endereco id    DEFAULT     h   ALTER TABLE ONLY geral.endereco ALTER COLUMN id SET DEFAULT nextval('geral.endereco_id_seq'::regclass);
 9   ALTER TABLE geral.endereco ALTER COLUMN id DROP DEFAULT;
       geral          postgres    false    213    212    213            �           2604    44253 	   estado id    DEFAULT     d   ALTER TABLE ONLY geral.estado ALTER COLUMN id SET DEFAULT nextval('geral.estado_id_seq'::regclass);
 7   ALTER TABLE geral.estado ALTER COLUMN id DROP DEFAULT;
       geral          postgres    false    222    223    223            �           2604    44361 	   pessoa id    DEFAULT     d   ALTER TABLE ONLY geral.pessoa ALTER COLUMN id SET DEFAULT nextval('geral.pessoa_id_seq'::regclass);
 7   ALTER TABLE geral.pessoa ALTER COLUMN id DROP DEFAULT;
       geral          postgres    false    247    248    248            �           2604    44213    pessoa_fisica id    DEFAULT     r   ALTER TABLE ONLY geral.pessoa_fisica ALTER COLUMN id SET DEFAULT nextval('geral.pessoa_fisica_id_seq'::regclass);
 >   ALTER TABLE geral.pessoa_fisica ALTER COLUMN id DROP DEFAULT;
       geral          postgres    false    214    215    215            �           2604    44224    pessoa_juridica id    DEFAULT     v   ALTER TABLE ONLY geral.pessoa_juridica ALTER COLUMN id SET DEFAULT nextval('geral.pessoa_juridica_id_seq'::regclass);
 @   ALTER TABLE geral.pessoa_juridica ALTER COLUMN id DROP DEFAULT;
       geral          postgres    false    217    216    217            �           2604    44271    tipo_contato id    DEFAULT     p   ALTER TABLE ONLY geral.tipo_contato ALTER COLUMN id SET DEFAULT nextval('geral.tipo_contato_id_seq'::regclass);
 =   ALTER TABLE geral.tipo_contato ALTER COLUMN id DROP DEFAULT;
       geral          postgres    false    226    227    227            �           2604    44295    cargo id    DEFAULT     \   ALTER TABLE ONLY rh.cargo ALTER COLUMN id SET DEFAULT nextval('rh.cargo_id_seq'::regclass);
 3   ALTER TABLE rh.cargo ALTER COLUMN id DROP DEFAULT;
       rh          postgres    false    232    231    232            �           2604    44285    departamento id    DEFAULT     j   ALTER TABLE ONLY rh.departamento ALTER COLUMN id SET DEFAULT nextval('rh.departamento_id_seq'::regclass);
 :   ALTER TABLE rh.departamento ALTER COLUMN id DROP DEFAULT;
       rh          postgres    false    230    229    230            �           2604    44318    escolaridade id    DEFAULT     j   ALTER TABLE ONLY rh.escolaridade ALTER COLUMN id SET DEFAULT nextval('rh.escolaridade_id_seq'::regclass);
 :   ALTER TABLE rh.escolaridade ALTER COLUMN id DROP DEFAULT;
       rh          postgres    false    238    237    238            �           2604    44304    funcionario id    DEFAULT     h   ALTER TABLE ONLY rh.funcionario ALTER COLUMN id SET DEFAULT nextval('rh.funcionario_id_seq'::regclass);
 9   ALTER TABLE rh.funcionario ALTER COLUMN id DROP DEFAULT;
       rh          postgres    false    233    234    234            �           2604    44311 
   lotacao id    DEFAULT     `   ALTER TABLE ONLY rh.lotacao ALTER COLUMN id SET DEFAULT nextval('rh.lotacao_id_seq'::regclass);
 5   ALTER TABLE rh.lotacao ALTER COLUMN id DROP DEFAULT;
       rh          postgres    false    235    236    236            �           2604    44336    categoria id    DEFAULT     l   ALTER TABLE ONLY vendas.categoria ALTER COLUMN id SET DEFAULT nextval('vendas.categoria_id_seq'::regclass);
 ;   ALTER TABLE vendas.categoria ALTER COLUMN id DROP DEFAULT;
       vendas          postgres    false    242    241    242            �           2604    44345    forma_pagamento id    DEFAULT     x   ALTER TABLE ONLY vendas.forma_pagamento ALTER COLUMN id SET DEFAULT nextval('vendas.forma_pagamento_id_seq'::regclass);
 A   ALTER TABLE vendas.forma_pagamento ALTER COLUMN id DROP DEFAULT;
       vendas          postgres    false    244    243    244            �           2604    44354    item_nota_fiscal id    DEFAULT     z   ALTER TABLE ONLY vendas.item_nota_fiscal ALTER COLUMN id SET DEFAULT nextval('vendas.item_nota_fiscal_id_seq'::regclass);
 B   ALTER TABLE vendas.item_nota_fiscal ALTER COLUMN id DROP DEFAULT;
       vendas          postgres    false    245    246    246            �           2604    44369    nota_fiscal id    DEFAULT     p   ALTER TABLE ONLY vendas.nota_fiscal ALTER COLUMN id SET DEFAULT nextval('vendas.nota_fiscal_id_seq'::regclass);
 =   ALTER TABLE vendas.nota_fiscal ALTER COLUMN id DROP DEFAULT;
       vendas          postgres    false    249    250    250            �           2604    44327 
   produto id    DEFAULT     h   ALTER TABLE ONLY vendas.produto ALTER COLUMN id SET DEFAULT nextval('vendas.produto_id_seq'::regclass);
 9   ALTER TABLE vendas.produto ALTER COLUMN id DROP DEFAULT;
       vendas          postgres    false    240    239    240            �          0    44232    bairro 
   TABLE DATA           9   COPY geral.bairro (id, id_cidade, descricao) FROM stdin;
    geral          postgres    false    219   7�       �          0    44241    cidade 
   TABLE DATA           9   COPY geral.cidade (id, id_estado, descricao) FROM stdin;
    geral          postgres    false    221   T�       �          0    44259    contato 
   TABLE DATA           R   COPY geral.contato (id, id_tipo_contato, id_pessoa, valor, principal) FROM stdin;
    geral          postgres    false    225   q�       �          0    44156    endereco 
   TABLE DATA           Z   COPY geral.endereco (id, id_pessoa, id_bairro, rua, numero, cep, complemento) FROM stdin;
    geral          postgres    false    213   ��       �          0    44250    estado 
   TABLE DATA           5   COPY geral.estado (id, sigla, descricao) FROM stdin;
    geral          postgres    false    223   ��       �          0    44358    pessoa 
   TABLE DATA           2   COPY geral.pessoa (id, data_cadastro) FROM stdin;
    geral          postgres    false    248   Ƚ       �          0    44210    pessoa_fisica 
   TABLE DATA           A   COPY geral.pessoa_fisica (id, nome, cpf, nascimento) FROM stdin;
    geral          postgres    false    215   �       �          0    44221    pessoa_juridica 
   TABLE DATA           @   COPY geral.pessoa_juridica (id, razao_social, cnpj) FROM stdin;
    geral          postgres    false    217   �       �          0    44276    responsavel_juridico 
   TABLE DATA           S   COPY geral.responsavel_juridico (id_pessoa_fisica, id_pessoa_juridica) FROM stdin;
    geral          postgres    false    228   �       �          0    44268    tipo_contato 
   TABLE DATA           4   COPY geral.tipo_contato (id, descricao) FROM stdin;
    geral          postgres    false    227   <�       �          0    44292    cargo 
   TABLE DATA           *   COPY rh.cargo (id, descricao) FROM stdin;
    rh          postgres    false    232   Y�       �          0    44282    departamento 
   TABLE DATA           1   COPY rh.departamento (id, descricao) FROM stdin;
    rh          postgres    false    230   v�       �          0    44315    escolaridade 
   TABLE DATA           1   COPY rh.escolaridade (id, descricao) FROM stdin;
    rh          postgres    false    238   ��       �          0    44301    funcionario 
   TABLE DATA           Z   COPY rh.funcionario (id, id_pessoa, id_escolaridade, pretensao_salarial, pcd) FROM stdin;
    rh          postgres    false    234   ��       �          0    44308    lotacao 
   TABLE DATA           w   COPY rh.lotacao (id, id_cargo, id_departamento, id_funcionario, data_cadastro, data_desligamento, salario) FROM stdin;
    rh          postgres    false    236   ;       �          0    44333 	   categoria 
   TABLE DATA           2   COPY vendas.categoria (id, descricao) FROM stdin;
    vendas          postgres    false    242   �       �          0    44342    forma_pagamento 
   TABLE DATA           8   COPY vendas.forma_pagamento (id, descricao) FROM stdin;
    vendas          postgres    false    244   �       �          0    44351    item_nota_fiscal 
   TABLE DATA           h   COPY vendas.item_nota_fiscal (id, id_produto, id_nota_fiscal, quantidade, valor_venda_real) FROM stdin;
    vendas          postgres    false    246   $�       �          0    44366    nota_fiscal 
   TABLE DATA           ^   COPY vendas.nota_fiscal (id, id_vendedor, id_cliente, id_forma_pagto, data_venda) FROM stdin;
    vendas          postgres    false    250   A�       �          0    44324    produto 
   TABLE DATA           b   COPY vendas.produto (id, id_fornecedor, id_categoria, nome, valor_venda, valor_custo) FROM stdin;
    vendas          postgres    false    240   ^�       �           0    0    bairro_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('geral.bairro_id_seq', 1, false);
          geral          postgres    false    218            �           0    0    cidade_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('geral.cidade_id_seq', 1, false);
          geral          postgres    false    220            �           0    0    contato_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('geral.contato_id_seq', 1, false);
          geral          postgres    false    224            �           0    0    endereco_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('geral.endereco_id_seq', 1, false);
          geral          postgres    false    212            �           0    0    estado_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('geral.estado_id_seq', 1, false);
          geral          postgres    false    222            �           0    0    pessoa_fisica_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('geral.pessoa_fisica_id_seq', 1, false);
          geral          postgres    false    214            �           0    0    pessoa_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('geral.pessoa_id_seq', 1, false);
          geral          postgres    false    247            �           0    0    pessoa_juridica_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('geral.pessoa_juridica_id_seq', 1, false);
          geral          postgres    false    216            �           0    0    tipo_contato_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('geral.tipo_contato_id_seq', 1, false);
          geral          postgres    false    226            �           0    0    cargo_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('rh.cargo_id_seq', 1, false);
          rh          postgres    false    231            �           0    0    departamento_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('rh.departamento_id_seq', 1, false);
          rh          postgres    false    229            �           0    0    escolaridade_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('rh.escolaridade_id_seq', 1, false);
          rh          postgres    false    237            �           0    0    funcionario_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('rh.funcionario_id_seq', 1, false);
          rh          postgres    false    233            �           0    0    lotacao_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('rh.lotacao_id_seq', 1, false);
          rh          postgres    false    235            �           0    0    categoria_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('vendas.categoria_id_seq', 1, false);
          vendas          postgres    false    241            �           0    0    forma_pagamento_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('vendas.forma_pagamento_id_seq', 1, false);
          vendas          postgres    false    243            �           0    0    item_nota_fiscal_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('vendas.item_nota_fiscal_id_seq', 1, false);
          vendas          postgres    false    245            �           0    0    nota_fiscal_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('vendas.nota_fiscal_id_seq', 1, false);
          vendas          postgres    false    249            �           0    0    produto_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('vendas.produto_id_seq', 1, false);
          vendas          postgres    false    239            �           2606    44239    bairro bairro_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY geral.bairro
    ADD CONSTRAINT bairro_pkey PRIMARY KEY (id);
 ;   ALTER TABLE ONLY geral.bairro DROP CONSTRAINT bairro_pkey;
       geral            postgres    false    219            �           2606    44248    cidade cidade_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY geral.cidade
    ADD CONSTRAINT cidade_pkey PRIMARY KEY (id);
 ;   ALTER TABLE ONLY geral.cidade DROP CONSTRAINT cidade_pkey;
       geral            postgres    false    221            �           2606    44266    contato contato_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY geral.contato
    ADD CONSTRAINT contato_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY geral.contato DROP CONSTRAINT contato_pkey;
       geral            postgres    false    225            �           2606    44163    endereco endereco_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY geral.endereco
    ADD CONSTRAINT endereco_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY geral.endereco DROP CONSTRAINT endereco_pkey;
       geral            postgres    false    213            �           2606    44257    estado estado_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY geral.estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (id);
 ;   ALTER TABLE ONLY geral.estado DROP CONSTRAINT estado_pkey;
       geral            postgres    false    223            �           2606    44219 #   pessoa_fisica pessoa_fisica_cpf_key 
   CONSTRAINT     \   ALTER TABLE ONLY geral.pessoa_fisica
    ADD CONSTRAINT pessoa_fisica_cpf_key UNIQUE (cpf);
 L   ALTER TABLE ONLY geral.pessoa_fisica DROP CONSTRAINT pessoa_fisica_cpf_key;
       geral            postgres    false    215            �           2606    44217     pessoa_fisica pessoa_fisica_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY geral.pessoa_fisica
    ADD CONSTRAINT pessoa_fisica_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY geral.pessoa_fisica DROP CONSTRAINT pessoa_fisica_pkey;
       geral            postgres    false    215            �           2606    44230 (   pessoa_juridica pessoa_juridica_cnpj_key 
   CONSTRAINT     b   ALTER TABLE ONLY geral.pessoa_juridica
    ADD CONSTRAINT pessoa_juridica_cnpj_key UNIQUE (cnpj);
 Q   ALTER TABLE ONLY geral.pessoa_juridica DROP CONSTRAINT pessoa_juridica_cnpj_key;
       geral            postgres    false    217            �           2606    44228 $   pessoa_juridica pessoa_juridica_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY geral.pessoa_juridica
    ADD CONSTRAINT pessoa_juridica_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY geral.pessoa_juridica DROP CONSTRAINT pessoa_juridica_pkey;
       geral            postgres    false    217            �           2606    44363    pessoa pessoa_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY geral.pessoa
    ADD CONSTRAINT pessoa_pkey PRIMARY KEY (id);
 ;   ALTER TABLE ONLY geral.pessoa DROP CONSTRAINT pessoa_pkey;
       geral            postgres    false    248            �           2606    44280 .   responsavel_juridico responsavel_juridico_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY geral.responsavel_juridico
    ADD CONSTRAINT responsavel_juridico_pkey PRIMARY KEY (id_pessoa_fisica, id_pessoa_juridica);
 W   ALTER TABLE ONLY geral.responsavel_juridico DROP CONSTRAINT responsavel_juridico_pkey;
       geral            postgres    false    228    228            �           2606    44275    tipo_contato tipo_contato_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY geral.tipo_contato
    ADD CONSTRAINT tipo_contato_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY geral.tipo_contato DROP CONSTRAINT tipo_contato_pkey;
       geral            postgres    false    227            �           2606    44299    cargo cargo_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY rh.cargo
    ADD CONSTRAINT cargo_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY rh.cargo DROP CONSTRAINT cargo_pkey;
       rh            postgres    false    232            �           2606    44289    departamento departamento_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY rh.departamento
    ADD CONSTRAINT departamento_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY rh.departamento DROP CONSTRAINT departamento_pkey;
       rh            postgres    false    230            �           2606    44322    escolaridade escolaridade_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY rh.escolaridade
    ADD CONSTRAINT escolaridade_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY rh.escolaridade DROP CONSTRAINT escolaridade_pkey;
       rh            postgres    false    238            �           2606    44306    funcionario funcionario_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY rh.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY rh.funcionario DROP CONSTRAINT funcionario_pkey;
       rh            postgres    false    234            �           2606    44313    lotacao lotacao_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY rh.lotacao
    ADD CONSTRAINT lotacao_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY rh.lotacao DROP CONSTRAINT lotacao_pkey;
       rh            postgres    false    236            �           2606    44340    categoria categoria_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY vendas.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY vendas.categoria DROP CONSTRAINT categoria_pkey;
       vendas            postgres    false    242            �           2606    44349 $   forma_pagamento forma_pagamento_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY vendas.forma_pagamento
    ADD CONSTRAINT forma_pagamento_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY vendas.forma_pagamento DROP CONSTRAINT forma_pagamento_pkey;
       vendas            postgres    false    244            �           2606    44356 &   item_nota_fiscal item_nota_fiscal_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY vendas.item_nota_fiscal
    ADD CONSTRAINT item_nota_fiscal_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY vendas.item_nota_fiscal DROP CONSTRAINT item_nota_fiscal_pkey;
       vendas            postgres    false    246            �           2606    44371    nota_fiscal nota_fiscal_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY vendas.nota_fiscal
    ADD CONSTRAINT nota_fiscal_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY vendas.nota_fiscal DROP CONSTRAINT nota_fiscal_pkey;
       vendas            postgres    false    250            �           2606    44331    produto produto_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY vendas.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY vendas.produto DROP CONSTRAINT produto_pkey;
       vendas            postgres    false    240            �           2606    44422     endereco endereco_id_pessoa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY geral.endereco
    ADD CONSTRAINT endereco_id_pessoa_fkey FOREIGN KEY (id_pessoa) REFERENCES geral.pessoa(id) NOT VALID;
 I   ALTER TABLE ONLY geral.endereco DROP CONSTRAINT endereco_id_pessoa_fkey;
       geral          postgres    false    213    248    3321                        2606    44392    bairro fk_bairro__id_cidade    FK CONSTRAINT     {   ALTER TABLE ONLY geral.bairro
    ADD CONSTRAINT fk_bairro__id_cidade FOREIGN KEY (id_cidade) REFERENCES geral.cidade(id);
 D   ALTER TABLE ONLY geral.bairro DROP CONSTRAINT fk_bairro__id_cidade;
       geral          postgres    false    219    3293    221                       2606    44397    cidade fk_cidade__id_estado    FK CONSTRAINT     {   ALTER TABLE ONLY geral.cidade
    ADD CONSTRAINT fk_cidade__id_estado FOREIGN KEY (id_estado) REFERENCES geral.estado(id);
 D   ALTER TABLE ONLY geral.cidade DROP CONSTRAINT fk_cidade__id_estado;
       geral          postgres    false    223    221    3295                       2606    44407    contato fk_contato__id_pessoa    FK CONSTRAINT     }   ALTER TABLE ONLY geral.contato
    ADD CONSTRAINT fk_contato__id_pessoa FOREIGN KEY (id_pessoa) REFERENCES geral.pessoa(id);
 F   ALTER TABLE ONLY geral.contato DROP CONSTRAINT fk_contato__id_pessoa;
       geral          postgres    false    3321    248    225                       2606    44402 #   contato fk_contato__id_tipo_contato    FK CONSTRAINT     �   ALTER TABLE ONLY geral.contato
    ADD CONSTRAINT fk_contato__id_tipo_contato FOREIGN KEY (id_tipo_contato) REFERENCES geral.tipo_contato(id);
 L   ALTER TABLE ONLY geral.contato DROP CONSTRAINT fk_contato__id_tipo_contato;
       geral          postgres    false    227    3299    225            �           2606    44377    endereco fk_endereco__id_bairro    FK CONSTRAINT        ALTER TABLE ONLY geral.endereco
    ADD CONSTRAINT fk_endereco__id_bairro FOREIGN KEY (id_bairro) REFERENCES geral.bairro(id);
 H   ALTER TABLE ONLY geral.endereco DROP CONSTRAINT fk_endereco__id_bairro;
       geral          postgres    false    219    213    3291            �           2606    44382 "   pessoa_fisica fk_pessoa_fisica__id    FK CONSTRAINT     {   ALTER TABLE ONLY geral.pessoa_fisica
    ADD CONSTRAINT fk_pessoa_fisica__id FOREIGN KEY (id) REFERENCES geral.pessoa(id);
 K   ALTER TABLE ONLY geral.pessoa_fisica DROP CONSTRAINT fk_pessoa_fisica__id;
       geral          postgres    false    248    215    3321            �           2606    44387 &   pessoa_juridica fk_pessoa_juridica__id    FK CONSTRAINT        ALTER TABLE ONLY geral.pessoa_juridica
    ADD CONSTRAINT fk_pessoa_juridica__id FOREIGN KEY (id) REFERENCES geral.pessoa(id);
 O   ALTER TABLE ONLY geral.pessoa_juridica DROP CONSTRAINT fk_pessoa_juridica__id;
       geral          postgres    false    217    3321    248                       2606    44412 >   responsavel_juridico fk_responsavel_juridico__id_pessoa_fisica    FK CONSTRAINT     �   ALTER TABLE ONLY geral.responsavel_juridico
    ADD CONSTRAINT fk_responsavel_juridico__id_pessoa_fisica FOREIGN KEY (id_pessoa_fisica) REFERENCES geral.pessoa(id);
 g   ALTER TABLE ONLY geral.responsavel_juridico DROP CONSTRAINT fk_responsavel_juridico__id_pessoa_fisica;
       geral          postgres    false    248    228    3321                       2606    44417 @   responsavel_juridico fk_responsavel_juridico__id_pessoa_juridica    FK CONSTRAINT     �   ALTER TABLE ONLY geral.responsavel_juridico
    ADD CONSTRAINT fk_responsavel_juridico__id_pessoa_juridica FOREIGN KEY (id_pessoa_juridica) REFERENCES geral.pessoa(id);
 i   ALTER TABLE ONLY geral.responsavel_juridico DROP CONSTRAINT fk_responsavel_juridico__id_pessoa_juridica;
       geral          postgres    false    248    228    3321                       2606    44432 ,   funcionario funcionario_id_escolaridade_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY rh.funcionario
    ADD CONSTRAINT funcionario_id_escolaridade_fkey FOREIGN KEY (id_escolaridade) REFERENCES rh.escolaridade(id) NOT VALID;
 R   ALTER TABLE ONLY rh.funcionario DROP CONSTRAINT funcionario_id_escolaridade_fkey;
       rh          postgres    false    3311    238    234                       2606    44427 &   funcionario funcionario_id_pessoa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY rh.funcionario
    ADD CONSTRAINT funcionario_id_pessoa_fkey FOREIGN KEY (id_pessoa) REFERENCES geral.pessoa(id) NOT VALID;
 L   ALTER TABLE ONLY rh.funcionario DROP CONSTRAINT funcionario_id_pessoa_fkey;
       rh          postgres    false    3321    234    248                       2606    44437    lotacao lotacao_id_cargo_fkey    FK CONSTRAINT        ALTER TABLE ONLY rh.lotacao
    ADD CONSTRAINT lotacao_id_cargo_fkey FOREIGN KEY (id_cargo) REFERENCES rh.cargo(id) NOT VALID;
 C   ALTER TABLE ONLY rh.lotacao DROP CONSTRAINT lotacao_id_cargo_fkey;
       rh          postgres    false    3305    236    232            	           2606    44442 $   lotacao lotacao_id_departamento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY rh.lotacao
    ADD CONSTRAINT lotacao_id_departamento_fkey FOREIGN KEY (id_departamento) REFERENCES rh.departamento(id) NOT VALID;
 J   ALTER TABLE ONLY rh.lotacao DROP CONSTRAINT lotacao_id_departamento_fkey;
       rh          postgres    false    3303    236    230            
           2606    44447 #   lotacao lotacao_id_funcionario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY rh.lotacao
    ADD CONSTRAINT lotacao_id_funcionario_fkey FOREIGN KEY (id_funcionario) REFERENCES geral.pessoa(id) NOT VALID;
 I   ALTER TABLE ONLY rh.lotacao DROP CONSTRAINT lotacao_id_funcionario_fkey;
       rh          postgres    false    3321    248    236                       2606    44457 5   item_nota_fiscal item_nota_fiscal_id_nota_fiscal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vendas.item_nota_fiscal
    ADD CONSTRAINT item_nota_fiscal_id_nota_fiscal_fkey FOREIGN KEY (id_nota_fiscal) REFERENCES vendas.nota_fiscal(id) NOT VALID;
 _   ALTER TABLE ONLY vendas.item_nota_fiscal DROP CONSTRAINT item_nota_fiscal_id_nota_fiscal_fkey;
       vendas          postgres    false    246    250    3323                       2606    44452 1   item_nota_fiscal item_nota_fiscal_id_produto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vendas.item_nota_fiscal
    ADD CONSTRAINT item_nota_fiscal_id_produto_fkey FOREIGN KEY (id_produto) REFERENCES vendas.produto(id) NOT VALID;
 [   ALTER TABLE ONLY vendas.item_nota_fiscal DROP CONSTRAINT item_nota_fiscal_id_produto_fkey;
       vendas          postgres    false    3313    246    240                       2606    44467 '   nota_fiscal nota_fiscal_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vendas.nota_fiscal
    ADD CONSTRAINT nota_fiscal_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES geral.pessoa(id) NOT VALID;
 Q   ALTER TABLE ONLY vendas.nota_fiscal DROP CONSTRAINT nota_fiscal_id_cliente_fkey;
       vendas          postgres    false    3321    248    250                       2606    44472 +   nota_fiscal nota_fiscal_id_forma_pagto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vendas.nota_fiscal
    ADD CONSTRAINT nota_fiscal_id_forma_pagto_fkey FOREIGN KEY (id_forma_pagto) REFERENCES vendas.forma_pagamento(id) NOT VALID;
 U   ALTER TABLE ONLY vendas.nota_fiscal DROP CONSTRAINT nota_fiscal_id_forma_pagto_fkey;
       vendas          postgres    false    3317    250    244                       2606    44462 (   nota_fiscal nota_fiscal_id_vendedor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vendas.nota_fiscal
    ADD CONSTRAINT nota_fiscal_id_vendedor_fkey FOREIGN KEY (id_vendedor) REFERENCES geral.pessoa(id) NOT VALID;
 R   ALTER TABLE ONLY vendas.nota_fiscal DROP CONSTRAINT nota_fiscal_id_vendedor_fkey;
       vendas          postgres    false    3321    248    250                       2606    44482 !   produto produto_id_categoria_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vendas.produto
    ADD CONSTRAINT produto_id_categoria_fkey FOREIGN KEY (id_categoria) REFERENCES vendas.categoria(id) NOT VALID;
 K   ALTER TABLE ONLY vendas.produto DROP CONSTRAINT produto_id_categoria_fkey;
       vendas          postgres    false    3315    240    242                       2606    44477 "   produto produto_id_fornecedor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vendas.produto
    ADD CONSTRAINT produto_id_fornecedor_fkey FOREIGN KEY (id_fornecedor) REFERENCES geral.pessoa(id) NOT VALID;
 L   ALTER TABLE ONLY vendas.produto DROP CONSTRAINT produto_id_fornecedor_fkey;
       vendas          postgres    false    3321    248    240            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     