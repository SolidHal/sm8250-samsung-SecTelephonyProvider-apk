.class public Lorg/mime4j/util/CharsetUtil;
.super Ljava/lang/Object;
.source "CharsetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mime4j/util/CharsetUtil$Charset;
    }
.end annotation


# static fields
.field private static JAVA_CHARSETS:[Lorg/mime4j/util/CharsetUtil$Charset;

.field private static charsetMap:Ljava/util/HashMap;

.field private static decodingSupported:Ljava/util/TreeSet;

.field private static encodingSupported:Ljava/util/TreeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    const/16 v0, 0x93

    new-array v0, v0, [Lorg/mime4j/util/CharsetUtil$Charset;

    .line 803
    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v2, "ISO_8859-1:1987"

    const-string v3, "iso-ir-100"

    const-string v4, "ISO_8859-1"

    const-string v5, "latin1"

    const-string v6, "l1"

    const-string v7, "IBM819"

    const-string v8, "CP819"

    const-string v9, "csISOLatin1"

    const-string v10, "8859_1"

    const-string v11, "819"

    const-string v12, "IBM-819"

    const-string v13, "ISO8859-1"

    const-string v14, "ISO_8859_1"

    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISO8859_1"

    const-string v4, "ISO-8859-1"

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v2, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ISO_8859-2:1987"

    const-string v7, "iso-ir-101"

    const-string v8, "ISO_8859-2"

    const-string v9, "latin2"

    const-string v10, "l2"

    const-string v11, "csISOLatin2"

    const-string v12, "8859_2"

    const-string v13, "iso8859_2"

    filled-new-array/range {v6 .. v13}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "ISO8859_2"

    const-string v6, "ISO-8859-2"

    invoke-direct {v1, v4, v6, v3, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ISO_8859-3:1988"

    const-string v7, "iso-ir-109"

    const-string v8, "ISO_8859-3"

    const-string v9, "latin3"

    const-string v10, "l3"

    const-string v11, "csISOLatin3"

    const-string v12, "8859_3"

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "ISO8859_3"

    const-string v6, "ISO-8859-3"

    invoke-direct {v1, v4, v6, v3, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ISO_8859-4:1988"

    const-string v7, "iso-ir-110"

    const-string v8, "ISO_8859-4"

    const-string v9, "latin4"

    const-string v10, "l4"

    const-string v11, "csISOLatin4"

    const-string v12, "8859_4"

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "ISO8859_4"

    const-string v6, "ISO-8859-4"

    invoke-direct {v1, v4, v6, v3, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ISO_8859-5:1988"

    const-string v7, "iso-ir-144"

    const-string v8, "ISO_8859-5"

    const-string v9, "cyrillic"

    const-string v10, "csISOLatinCyrillic"

    const-string v11, "8859_5"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "ISO8859_5"

    const-string v6, "ISO-8859-5"

    invoke-direct {v1, v4, v6, v3, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ISO_8859-6:1987"

    const-string v7, "iso-ir-127"

    const-string v8, "ISO_8859-6"

    const-string v9, "ECMA-114"

    const-string v10, "ASMO-708"

    const-string v11, "arabic"

    const-string v12, "csISOLatinArabic"

    const-string v13, "8859_6"

    filled-new-array/range {v6 .. v13}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "ISO8859_6"

    const-string v6, "ISO-8859-6"

    invoke-direct {v1, v4, v6, v3, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ISO_8859-7:1987"

    const-string v7, "iso-ir-126"

    const-string v8, "ISO_8859-7"

    const-string v9, "ELOT_928"

    const-string v10, "ECMA-118"

    const-string v11, "greek"

    const-string v12, "greek8"

    const-string v13, "csISOLatinGreek"

    const-string v14, "8859_7"

    const-string v15, "sun_eu_greek"

    filled-new-array/range {v6 .. v15}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "ISO8859_7"

    const-string v7, "ISO-8859-7"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/4 v4, 0x6

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ISO_8859-8:1988"

    const-string v7, "iso-ir-138"

    const-string v8, "ISO_8859-8"

    const-string v9, "hebrew"

    const-string v10, "csISOLatinHebrew"

    const-string v11, "8859_8"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "ISO8859_8"

    const-string v7, "ISO-8859-8"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/4 v4, 0x7

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ISO_8859-9:1989"

    const-string v7, "iso-ir-148"

    const-string v8, "ISO_8859-9"

    const-string v9, "latin5"

    const-string v10, "l5"

    const-string v11, "csISOLatin5"

    const-string v12, "8859_9"

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "ISO8859_9"

    const-string v7, "ISO-8859-9"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x8

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "ISO8859_13"

    const-string v7, "ISO-8859-13"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x9

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ISO_8859-15"

    const-string v7, "Latin-9"

    const-string v8, "8859_15"

    const-string v9, "csISOlatin9"

    const-string v10, "IBM923"

    const-string v11, "cp923"

    const-string v12, "923"

    const-string v13, "L9"

    const-string v14, "IBM-923"

    const-string v15, "ISO8859-15"

    const-string v16, "LATIN9"

    const-string v17, "LATIN0"

    const-string v18, "csISOlatin0"

    const-string v19, "ISO8859_15_FDIS"

    filled-new-array/range {v6 .. v19}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "ISO8859_15"

    const-string v7, "ISO-8859-15"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0xa

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "csKOI8R"

    const-string v6, "koi8"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "KOI8_R"

    const-string v7, "KOI8-R"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0xb

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ANSI_X3.4-1968"

    const-string v7, "iso-ir-6"

    const-string v8, "ANSI_X3.4-1986"

    const-string v9, "ISO_646.irv:1991"

    const-string v10, "ISO646-US"

    const-string v11, "us"

    const-string v12, "IBM367"

    const-string v13, "cp367"

    const-string v14, "csASCII"

    const-string v15, "ascii7"

    const-string v16, "646"

    const-string v17, "iso_646.irv:1983"

    filled-new-array/range {v6 .. v17}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "ASCII"

    const-string v7, "US-ASCII"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0xc

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "UTF8"

    const-string v7, "UTF-8"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0xd

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "UTF_16"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "UTF-16"

    invoke-direct {v1, v6, v6, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0xe

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "X-UTF-16BE"

    const-string v6, "UTF_16BE"

    const-string v7, "ISO-10646-UCS-2"

    filled-new-array {v4, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "UnicodeBigUnmarked"

    const-string v7, "UTF-16BE"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0xf

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "UTF_16LE"

    const-string v6, "X-UTF-16LE"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "UnicodeLittleUnmarked"

    const-string v7, "UTF-16LE"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x10

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "csBig5"

    const-string v6, "CN-Big5"

    const-string v7, "BIG-FIVE"

    const-string v8, "BIGFIVE"

    filled-new-array {v4, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Big5"

    invoke-direct {v1, v6, v6, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x11

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "big5hkscs"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Big5_HKSCS"

    const-string v7, "Big5-HKSCS"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x12

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v6, "csEUCPkdFmtJapanese"

    const-string v7, "Extended_UNIX_Code_Packed_Format_for_Japanese"

    const-string v8, "eucjis"

    const-string v9, "x-eucjp"

    const-string v10, "eucjp"

    const-string v11, "x-euc-jp"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "EUC_JP"

    const-string v7, "EUC-JP"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x13

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v6, "csEUCKR"

    const-string v7, "ksc5601"

    const-string v8, "5601"

    const-string v9, "ksc5601_1987"

    const-string v10, "ksc_5601"

    const-string v11, "ksc5601-1987"

    const-string v12, "ks_c_5601-1987"

    const-string v13, "euckr"

    filled-new-array/range {v6 .. v13}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "EUC_KR"

    const-string v7, "EUC-KR"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x14

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "gb18030-2000"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "GB18030"

    invoke-direct {v1, v6, v6, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x15

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v6, "x-EUC-CN"

    const-string v7, "csGB2312"

    const-string v8, "euccn"

    const-string v9, "euc-cn"

    const-string v10, "gb2312-80"

    const-string v11, "gb2312-1980"

    const-string v12, "CN-GB"

    const-string v13, "CN-GB-ISOIR165"

    filled-new-array/range {v6 .. v13}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "EUC_CN"

    const-string v7, "GB2312"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x16

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "CP936"

    const-string v6, "MS936"

    const-string v7, "ms_936"

    const-string v8, "x-mswin-936"

    filled-new-array {v4, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "GBK"

    const-string v7, "windows-936"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x17

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "ebcdic-cp-us"

    const-string v6, "ebcdic-cp-ca"

    const-string v7, "ebcdic-cp-wt"

    const-string v8, "ebcdic-cp-nl"

    const-string v9, "csIBM037"

    filled-new-array {v4, v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp037"

    const-string v7, "IBM037"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x18

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "csIBM273"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp273"

    const-string v7, "IBM273"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x19

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "EBCDIC-CP-DK"

    const-string v6, "EBCDIC-CP-NO"

    const-string v7, "csIBM277"

    filled-new-array {v4, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp277"

    const-string v7, "IBM277"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x1a

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "CP278"

    const-string v6, "ebcdic-cp-fi"

    const-string v7, "ebcdic-cp-se"

    const-string v8, "csIBM278"

    filled-new-array {v4, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp278"

    const-string v7, "IBM278"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x1b

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "ebcdic-cp-it"

    const-string v6, "csIBM280"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp280"

    const-string v7, "IBM280"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x1c

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "ebcdic-cp-es"

    const-string v6, "csIBM284"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp284"

    const-string v7, "IBM284"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x1d

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "ebcdic-cp-gb"

    const-string v6, "csIBM285"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp285"

    const-string v7, "IBM285"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x1e

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "ebcdic-cp-fr"

    const-string v6, "csIBM297"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp297"

    const-string v7, "IBM297"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x1f

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "ebcdic-cp-ar1"

    const-string v6, "csIBM420"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp420"

    const-string v7, "IBM420"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x20

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "ebcdic-cp-he"

    const-string v6, "csIBM424"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp424"

    const-string v7, "IBM424"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x21

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "437"

    const-string v6, "csPC8CodePage437"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp437"

    const-string v7, "IBM437"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x22

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "ebcdic-cp-be"

    const-string v6, "ebcdic-cp-ch"

    const-string v7, "csIBM500"

    filled-new-array {v4, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp500"

    const-string v7, "IBM500"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x23

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "csPC775Baltic"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp775"

    const-string v7, "IBM775"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x24

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp838"

    const-string v7, "IBM-Thai"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x25

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "850"

    const-string v6, "csPC850Multilingual"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp850"

    const-string v7, "IBM850"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x26

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "852"

    const-string v6, "csPCp852"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp852"

    const-string v7, "IBM852"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x27

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "855"

    const-string v6, "csIBM855"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp855"

    const-string v7, "IBM855"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x28

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "857"

    const-string v6, "csIBM857"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp857"

    const-string v7, "IBM857"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x29

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "CCSID00858"

    const-string v6, "CP00858"

    const-string v7, "PC-Multilingual-850+euro"

    filled-new-array {v4, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp858"

    const-string v7, "IBM00858"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x2a

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "860"

    const-string v6, "csIBM860"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp860"

    const-string v7, "IBM860"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x2b

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "861"

    const-string v6, "cp-is"

    const-string v7, "csIBM861"

    filled-new-array {v4, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp861"

    const-string v7, "IBM861"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x2c

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "862"

    const-string v6, "csPC862LatinHebrew"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp862"

    const-string v7, "IBM862"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x2d

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "863"

    const-string v6, "csIBM863"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp863"

    const-string v7, "IBM863"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x2e

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "cp864"

    const-string v6, "csIBM864"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp864"

    const-string v7, "IBM864"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x2f

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "865"

    const-string v6, "csIBM865"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp865"

    const-string v7, "IBM865"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x30

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "866"

    const-string v6, "csIBM866"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp866"

    const-string v7, "IBM866"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x31

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "cp-ar"

    const-string v6, "csIBM868"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp868"

    const-string v7, "IBM868"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x32

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "cp-gr"

    const-string v6, "csIBM869"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp869"

    const-string v7, "IBM869"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x33

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "ebcdic-cp-roece"

    const-string v6, "ebcdic-cp-yu"

    const-string v7, "csIBM870"

    filled-new-array {v4, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp870"

    const-string v7, "IBM870"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x34

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "ebcdic-cp-is"

    const-string v6, "csIBM871"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp871"

    const-string v7, "IBM871"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x35

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "ebcdic-cp-ar2"

    const-string v6, "csIBM918"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp918"

    const-string v7, "IBM918"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x36

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "csIBM1026"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp1026"

    const-string v7, "IBM1026"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x37

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "IBM-1047"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp1047"

    const-string v7, "IBM1047"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x38

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "CCSID01140"

    const-string v6, "CP01140"

    const-string v7, "ebcdic-us-37+euro"

    filled-new-array {v4, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp1140"

    const-string v7, "IBM01140"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x39

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "CCSID01141"

    const-string v6, "CP01141"

    const-string v7, "ebcdic-de-273+euro"

    filled-new-array {v4, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp1141"

    const-string v7, "IBM01141"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x3a

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "CCSID01142"

    const-string v6, "CP01142"

    const-string v7, "ebcdic-dk-277+euro"

    const-string v8, "ebcdic-no-277+euro"

    filled-new-array {v4, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp1142"

    const-string v7, "IBM01142"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x3b

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "CCSID01143"

    const-string v6, "CP01143"

    const-string v7, "ebcdic-fi-278+euro"

    const-string v8, "ebcdic-se-278+euro"

    filled-new-array {v4, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp1143"

    const-string v7, "IBM01143"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x3c

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "CCSID01144"

    const-string v6, "CP01144"

    const-string v7, "ebcdic-it-280+euro"

    filled-new-array {v4, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp1144"

    const-string v7, "IBM01144"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x3d

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "CCSID01145"

    const-string v6, "CP01145"

    const-string v7, "ebcdic-es-284+euro"

    filled-new-array {v4, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp1145"

    const-string v7, "IBM01145"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x3e

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "CCSID01146"

    const-string v6, "CP01146"

    const-string v7, "ebcdic-gb-285+euro"

    filled-new-array {v4, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp1146"

    const-string v7, "IBM01146"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x3f

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "CCSID01147"

    const-string v6, "CP01147"

    const-string v7, "ebcdic-fr-297+euro"

    filled-new-array {v4, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp1147"

    const-string v7, "IBM01147"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x40

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "CCSID01148"

    const-string v6, "CP01148"

    const-string v7, "ebcdic-international-500+euro"

    filled-new-array {v4, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp1148"

    const-string v7, "IBM01148"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x41

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "CCSID01149"

    const-string v6, "CP01149"

    const-string v7, "ebcdic-is-871+euro"

    filled-new-array {v4, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Cp1149"

    const-string v7, "IBM01149"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x42

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp1250"

    const-string v7, "windows-1250"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x43

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp1251"

    const-string v7, "windows-1251"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x44

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp1252"

    const-string v7, "windows-1252"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x45

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp1253"

    const-string v7, "windows-1253"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x46

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp1254"

    const-string v7, "windows-1254"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x47

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp1255"

    const-string v7, "windows-1255"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x48

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp1256"

    const-string v7, "windows-1256"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x49

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp1257"

    const-string v7, "windows-1257"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x4a

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp1258"

    const-string v7, "windows-1258"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x4b

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "ISO2022CN"

    const-string v7, "ISO-2022-CN"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x4c

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "csISO2022JP"

    const-string v6, "JIS"

    const-string v7, "jis_encoding"

    const-string v8, "csjisencoding"

    filled-new-array {v4, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "ISO2022JP"

    const-string v7, "ISO-2022-JP"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x4d

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "csISO2022KR"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "ISO2022KR"

    const-string v7, "ISO-2022-KR"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x4e

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "X0201"

    const-string v6, "JIS0201"

    const-string v7, "csHalfWidthKatakana"

    filled-new-array {v4, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "JIS_X0201"

    invoke-direct {v1, v6, v6, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x4f

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "iso-ir-159"

    const-string v6, "x0212"

    const-string v7, "JIS0212"

    const-string v8, "csISO159JISX02121990"

    filled-new-array {v4, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "JIS_X0212-1990"

    invoke-direct {v1, v6, v6, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x50

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v6, "x-JIS0208"

    const-string v7, "JIS0208"

    const-string v8, "csISO87JISX0208"

    const-string v9, "x0208"

    const-string v10, "JIS_X0208-1983"

    const-string v11, "iso-ir-87"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "JIS_C6626-1983"

    invoke-direct {v1, v6, v6, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x51

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "MS_Kanji"

    const-string v6, "csShiftJIS"

    const-string v7, "shift-jis"

    const-string v8, "x-sjis"

    const-string v9, "pck"

    filled-new-array {v4, v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "SJIS"

    const-string v7, "Shift_JIS"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x52

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "TIS620"

    const-string v7, "TIS-620"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x53

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "windows-932"

    const-string v6, "csWindows31J"

    const-string v7, "x-ms-cp932"

    filled-new-array {v4, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "MS932"

    const-string v7, "Windows-31J"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x54

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "x-EUC-TW"

    const-string v6, "cns11643"

    const-string v7, "euctw"

    filled-new-array {v4, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "EUC_TW"

    const-string v7, "EUC-TW"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x55

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "johab"

    const-string v6, "cp1361"

    const-string v7, "ms1361"

    const-string v8, "ksc5601-1992"

    const-string v9, "ksc5601_1992"

    filled-new-array {v4, v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "x-Johab"

    invoke-direct {v1, v7, v4, v6, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x56

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "MS950_HKSCS"

    const-string v7, ""

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x57

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "cp874"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "MS874"

    const-string v7, "windows-874"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x58

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "windows949"

    const-string v6, "ms_949"

    const-string v7, "x-windows-949"

    filled-new-array {v4, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "MS949"

    const-string v7, "windows-949"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x59

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "x-windows-950"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "MS950"

    const-string v7, "windows-950"

    invoke-direct {v1, v6, v7, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x5a

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp737"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x5b

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp856"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x5c

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp875"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x5d

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp921"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x5e

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp922"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x5f

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp930"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x60

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp933"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x61

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp935"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x62

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp937"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x63

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp939"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x64

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp942"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x65

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp942C"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x66

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp943"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x67

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp943C"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x68

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp948"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x69

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp949"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x6a

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp949C"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x6b

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp950"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x6c

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp964"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x6d

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp970"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x6e

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp1006"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x6f

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp1025"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x70

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp1046"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x71

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp1097"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x72

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp1098"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x73

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp1112"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x74

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp1122"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x75

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp1123"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x76

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp1124"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x77

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp1381"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x78

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp1383"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x79

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Cp33722"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x7a

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "Big5_Solaris"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x7b

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "EUC_JP_LINUX"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x7c

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "EUC_JP_Solaris"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x7d

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "x-ISCII91"

    const-string v6, "iscii"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "ISCII91"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x7e

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "ISO2022_CN_CNS"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x7f

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "ISO2022_CN_GB"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x80

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "x-iso-8859-11"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x81

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "JISAutoDetect"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x82

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "MacArabic"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x83

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "MacCentralEurope"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x84

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "MacCroatian"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x85

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "MacCyrillic"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x86

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "MacDingbat"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x87

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "MacGreek"

    invoke-direct {v1, v6, v6, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x88

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "MacHebrew"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x89

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "MacIceland"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x8a

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    const-string v4, "Macintosh"

    const-string v6, "MAC"

    const-string v7, "csMacintosh"

    filled-new-array {v4, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "MacRoman"

    invoke-direct {v1, v6, v6, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x8b

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "MacRomania"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x8c

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "MacSymbol"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x8d

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "MacThai"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x8e

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "MacTurkish"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x8f

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "MacUkraine"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x90

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "UnicodeBig"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x91

    aput-object v1, v0, v4

    new-instance v1, Lorg/mime4j/util/CharsetUtil$Charset;

    new-array v4, v2, [Ljava/lang/String;

    const-string v6, "UnicodeLittle"

    invoke-direct {v1, v6, v5, v4, v5}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V

    const/16 v4, 0x92

    aput-object v1, v0, v4

    sput-object v0, Lorg/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/mime4j/util/CharsetUtil$Charset;

    .line 1011
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Lorg/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/TreeSet;

    .line 1012
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Lorg/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/TreeSet;

    new-array v0, v3, [B

    .line 1013
    fill-array-data v0, :array_0

    move v1, v2

    .line 1014
    :goto_0
    sget-object v3, Lorg/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/mime4j/util/CharsetUtil$Charset;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 1016
    :try_start_0
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lorg/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/mime4j/util/CharsetUtil$Charset;

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1017
    sget-object v3, Lorg/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/TreeSet;

    sget-object v4, Lorg/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/mime4j/util/CharsetUtil$Charset;

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string v3, "dummy"

    .line 1022
    sget-object v4, Lorg/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/mime4j/util/CharsetUtil$Charset;

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 1023
    sget-object v3, Lorg/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/TreeSet;

    sget-object v4, Lorg/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/mime4j/util/CharsetUtil$Charset;

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1029
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/HashMap;

    move v0, v2

    .line 1030
    :goto_1
    sget-object v1, Lorg/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/mime4j/util/CharsetUtil$Charset;

    array-length v3, v1

    if-ge v0, v3, :cond_3

    .line 1031
    aget-object v1, v1, v0

    .line 1032
    sget-object v3, Lorg/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/HashMap;

    invoke-static {v1}, Lorg/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    invoke-static {v1}, Lorg/mime4j/util/CharsetUtil$Charset;->access$200(Lorg/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1034
    sget-object v3, Lorg/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/HashMap;

    invoke-static {v1}, Lorg/mime4j/util/CharsetUtil$Charset;->access$200(Lorg/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    :cond_1
    invoke-static {v1}, Lorg/mime4j/util/CharsetUtil$Charset;->access$300(Lorg/mime4j/util/CharsetUtil$Charset;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    move v3, v2

    .line 1037
    :goto_2
    invoke-static {v1}, Lorg/mime4j/util/CharsetUtil$Charset;->access$300(Lorg/mime4j/util/CharsetUtil$Charset;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 1038
    sget-object v4, Lorg/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/HashMap;

    invoke-static {v1}, Lorg/mime4j/util/CharsetUtil$Charset;->access$300(Lorg/mime4j/util/CharsetUtil$Charset;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void

    nop

    :array_0
    .array-data 1
        0x64t
        0x75t
        0x6dt
        0x6dt
        0x79t
    .end array-data
.end method

.method public static isDecodingSupported(Ljava/lang/String;)Z
    .locals 1

    .line 1071
    sget-object v0, Lorg/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static toJavaCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1101
    sget-object v0, Lorg/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mime4j/util/CharsetUtil$Charset;

    if-eqz p0, :cond_0

    .line 1103
    invoke-static {p0}, Lorg/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
