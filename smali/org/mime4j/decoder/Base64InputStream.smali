.class public Lorg/mime4j/decoder/Base64InputStream;
.super Ljava/io/InputStream;
.source "Base64InputStream.java"


# static fields
.field private static TRANSLATION:[B


# instance fields
.field private final byteq:Lorg/mime4j/decoder/ByteQueue;

.field private done:Z

.field private final s:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 122
    fill-array-data v0, :array_0

    sput-object v0, Lorg/mime4j/decoder/Base64InputStream;->TRANSLATION:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 35
    new-instance v0, Lorg/mime4j/decoder/ByteQueue;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/mime4j/decoder/ByteQueue;-><init>(I)V

    iput-object v0, p0, Lorg/mime4j/decoder/Base64InputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lorg/mime4j/decoder/Base64InputStream;->done:Z

    .line 39
    iput-object p1, p0, Lorg/mime4j/decoder/Base64InputStream;->s:Ljava/io/InputStream;

    return-void
.end method

.method private decodeAndEnqueue([BI)V
    .locals 4

    const/4 v0, 0x0

    .line 103
    aget-byte v1, p1, v0

    shl-int/lit8 v1, v1, 0x12

    or-int/2addr v0, v1

    const/4 v1, 0x1

    .line 104
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    const/4 v1, 0x2

    .line 105
    aget-byte v2, p1, v1

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v0, v2

    const/4 v2, 0x3

    .line 106
    aget-byte p1, p1, v2

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    .line 109
    iget-object v3, p0, Lorg/mime4j/decoder/Base64InputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {v3, v0}, Lorg/mime4j/decoder/ByteQueue;->enqueue(B)V

    if-le p2, v1, :cond_0

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 113
    iget-object v1, p0, Lorg/mime4j/decoder/Base64InputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {v1, v0}, Lorg/mime4j/decoder/ByteQueue;->enqueue(B)V

    if-le p2, v2, :cond_0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 117
    iget-object p0, p0, Lorg/mime4j/decoder/Base64InputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {p0, p1}, Lorg/mime4j/decoder/ByteQueue;->enqueue(B)V

    :cond_0
    return-void
.end method

.method private fillBuffer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 76
    :goto_0
    iget-boolean v3, p0, Lorg/mime4j/decoder/Base64InputStream;->done:Z

    if-nez v3, :cond_4

    .line 77
    iget-object v3, p0, Lorg/mime4j/decoder/Base64InputStream;->s:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_2

    .line 88
    sget-object v4, Lorg/mime4j/decoder/Base64InputStream;->TRANSLATION:[B

    aget-byte v3, v4, v3

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v2, 0x1

    .line 91
    aput-byte v3, v1, v2

    if-ne v4, v0, :cond_1

    .line 93
    invoke-direct {p0, v1, v4}, Lorg/mime4j/decoder/Base64InputStream;->decodeAndEnqueue([BI)V

    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    .line 84
    :cond_2
    invoke-direct {p0, v1, v2}, Lorg/mime4j/decoder/Base64InputStream;->decodeAndEnqueue([BI)V

    const/4 v3, 0x1

    .line 85
    iput-boolean v3, p0, Lorg/mime4j/decoder/Base64InputStream;->done:Z

    goto :goto_0

    :cond_3
    if-lez v2, :cond_4

    .line 80
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected EOF in MIME parser, dropping "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sextets"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TP/Base64InputStream"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-object p0, p0, Lorg/mime4j/decoder/Base64InputStream;->s:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/mime4j/decoder/Base64InputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {v0}, Lorg/mime4j/decoder/ByteQueue;->count()I

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-direct {p0}, Lorg/mime4j/decoder/Base64InputStream;->fillBuffer()V

    .line 54
    iget-object v0, p0, Lorg/mime4j/decoder/Base64InputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {v0}, Lorg/mime4j/decoder/ByteQueue;->count()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 59
    :cond_0
    iget-object p0, p0, Lorg/mime4j/decoder/Base64InputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {p0}, Lorg/mime4j/decoder/ByteQueue;->dequeue()B

    move-result p0

    if-ltz p0, :cond_1

    return p0

    :cond_1
    and-int/lit16 p0, p0, 0xff

    return p0
.end method
