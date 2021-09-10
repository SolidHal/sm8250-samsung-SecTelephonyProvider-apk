.class public Lorg/mime4j/decoder/QuotedPrintableInputStream;
.super Ljava/io/InputStream;
.source "QuotedPrintableInputStream.java"


# instance fields
.field byteq:Lorg/mime4j/decoder/ByteQueue;

.field pushbackq:Lorg/mime4j/decoder/ByteQueue;

.field private state:B

.field private stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 35
    new-instance v0, Lorg/mime4j/decoder/ByteQueue;

    invoke-direct {v0}, Lorg/mime4j/decoder/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    .line 36
    new-instance v0, Lorg/mime4j/decoder/ByteQueue;

    invoke-direct {v0}, Lorg/mime4j/decoder/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/mime4j/decoder/ByteQueue;

    const/4 v0, 0x0

    .line 37
    iput-byte v0, p0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 40
    iput-object p1, p0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;

    return-void
.end method

.method private asciiCharToNumericValue(B)B
    .locals 1

    const/16 p0, 0x30

    if-lt p1, p0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    sub-int/2addr p1, p0

    :goto_0
    int-to-byte p0, p1

    return p0

    :cond_0
    const/16 p0, 0x41

    if-lt p1, p0, :cond_1

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_1

    :goto_1
    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0xa

    goto :goto_0

    :cond_1
    const/16 p0, 0x61

    if-lt p1, p0, :cond_2

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_2

    goto :goto_1

    .line 208
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " is not a hexadecimal digit"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private fillBuffer()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    .line 113
    :goto_0
    iget-object v3, v0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {v3}, Lorg/mime4j/decoder/ByteQueue;->count()I

    move-result v3

    if-nez v3, :cond_11

    .line 114
    iget-object v3, v0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {v3}, Lorg/mime4j/decoder/ByteQueue;->count()I

    move-result v3

    if-nez v3, :cond_0

    .line 115
    invoke-direct/range {p0 .. p0}, Lorg/mime4j/decoder/QuotedPrintableInputStream;->populatePushbackQueue()V

    .line 116
    iget-object v3, v0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {v3}, Lorg/mime4j/decoder/ByteQueue;->count()I

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object v3, v0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {v3}, Lorg/mime4j/decoder/ByteQueue;->dequeue()B

    move-result v3

    .line 122
    iget-byte v4, v0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->state:B

    const/4 v5, 0x1

    const/16 v6, 0x3d

    if-eqz v4, :cond_f

    const/16 v7, 0x66

    const/16 v8, 0x46

    const/16 v9, 0x61

    const/16 v10, 0x39

    const/16 v11, 0x41

    const/16 v12, 0x30

    const/4 v14, 0x3

    const/4 v15, 0x2

    const-string v13, "TP/QuotedPrintableInputStream"

    if-eq v4, v5, :cond_8

    if-eq v4, v15, :cond_6

    if-eq v4, v14, :cond_1

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v5, v0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->state:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iput-byte v1, v0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 185
    iget-object v4, v0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v3}, Lorg/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto :goto_0

    :cond_1
    if-lt v3, v12, :cond_2

    if-le v3, v10, :cond_4

    :cond_2
    if-lt v3, v11, :cond_3

    if-le v3, v8, :cond_4

    :cond_3
    if-lt v3, v9, :cond_5

    if-gt v3, v7, :cond_5

    .line 168
    :cond_4
    invoke-direct {v0, v2}, Lorg/mime4j/decoder/QuotedPrintableInputStream;->asciiCharToNumericValue(B)B

    move-result v4

    .line 169
    invoke-direct {v0, v3}, Lorg/mime4j/decoder/QuotedPrintableInputStream;->asciiCharToNumericValue(B)B

    move-result v3

    .line 170
    iput-byte v1, v0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 171
    iget-object v5, v0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    invoke-virtual {v5, v3}, Lorg/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto :goto_0

    .line 174
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed MIME; expected [0-9A-Z], got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput-byte v1, v0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 177
    iget-object v4, v0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v6}, Lorg/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 178
    iget-object v4, v0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v2}, Lorg/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 179
    iget-object v4, v0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v3}, Lorg/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    :cond_6
    const/16 v4, 0xa

    if-ne v3, v4, :cond_7

    .line 156
    iput-byte v1, v0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->state:B

    goto/16 :goto_0

    .line 159
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed MIME; expected 10, got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iput-byte v1, v0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 161
    iget-object v4, v0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v6}, Lorg/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 162
    iget-object v4, v0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Lorg/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 163
    iget-object v4, v0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v3}, Lorg/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    :cond_8
    const/16 v5, 0xd

    if-ne v3, v5, :cond_9

    .line 133
    iput-byte v15, v0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->state:B

    goto/16 :goto_0

    :cond_9
    if-lt v3, v12, :cond_a

    if-le v3, v10, :cond_c

    :cond_a
    if-lt v3, v11, :cond_b

    if-le v3, v8, :cond_c

    :cond_b
    if-lt v3, v9, :cond_d

    if-gt v3, v7, :cond_d

    .line 136
    :cond_c
    iput-byte v14, v0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->state:B

    move v2, v3

    goto/16 :goto_0

    :cond_d
    if-ne v3, v6, :cond_e

    const-string v3, "Malformed MIME; got =="

    .line 144
    invoke-static {v13, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v3, v0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {v3, v6}, Lorg/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 148
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed MIME; expected \\r or [0-9A-Z], got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iput-byte v1, v0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 150
    iget-object v4, v0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v6}, Lorg/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 151
    iget-object v4, v0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v3}, Lorg/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    :cond_f
    if-eq v3, v6, :cond_10

    .line 125
    iget-object v4, v0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v3}, Lorg/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 128
    :cond_10
    iput-byte v5, v0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->state:B

    goto/16 :goto_0

    :cond_11
    return-void
.end method

.method private populatePushbackQueue()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {v0}, Lorg/mime4j/decoder/ByteQueue;->count()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    .line 97
    iget-object p0, p0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/mime4j/decoder/ByteQueue;

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/mime4j/decoder/ByteQueue;->enqueue(B)V

    return-void

    .line 89
    :cond_1
    iget-object v1, p0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/mime4j/decoder/ByteQueue;

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lorg/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto :goto_0

    .line 93
    :cond_2
    iget-object v1, p0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {v1}, Lorg/mime4j/decoder/ByteQueue;->clear()V

    .line 94
    iget-object p0, p0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/mime4j/decoder/ByteQueue;

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/mime4j/decoder/ByteQueue;->enqueue(B)V

    return-void

    .line 85
    :cond_3
    iget-object p0, p0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {p0}, Lorg/mime4j/decoder/ByteQueue;->clear()V

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

    .line 49
    iget-object p0, p0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;

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

    .line 53
    invoke-direct {p0}, Lorg/mime4j/decoder/QuotedPrintableInputStream;->fillBuffer()V

    .line 54
    iget-object v0, p0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {v0}, Lorg/mime4j/decoder/ByteQueue;->count()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 57
    :cond_0
    iget-object p0, p0, Lorg/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {p0}, Lorg/mime4j/decoder/ByteQueue;->dequeue()B

    move-result p0

    if-ltz p0, :cond_1

    return p0

    :cond_1
    and-int/lit16 p0, p0, 0xff

    return p0
.end method
