.class Lorg/mime4j/decoder/UnboundedFifoByteBuffer;
.super Ljava/lang/Object;
.source "UnboundedFifoByteBuffer.java"


# instance fields
.field protected buffer:[B

.field protected head:I

.field protected tail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 67
    invoke-direct {p0, v0}, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 81
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    const/4 p1, 0x0

    .line 82
    iput p1, p0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    .line 83
    iput p1, p0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    return-void

    .line 79
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The size must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(B)Z
    .locals 7

    .line 120
    invoke-virtual {p0}, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-lt v0, v3, :cond_2

    .line 121
    array-length v0, v2

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 124
    iget v2, p0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    move v3, v4

    :cond_0
    :goto_0
    iget v5, p0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    if-eq v2, v5, :cond_1

    .line 125
    iget-object v5, p0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    aget-byte v6, v5, v2

    aput-byte v6, v0, v3

    .line 126
    aput-byte v4, v5, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 130
    array-length v5, v5

    if-ne v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    .line 135
    :cond_1
    iput-object v0, p0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    .line 136
    iput v4, p0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    .line 137
    iput v3, p0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    .line 140
    :cond_2
    iget-object v0, p0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    iget v2, p0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    aput-byte p1, v0, v2

    add-int/2addr v2, v1

    .line 141
    iput v2, p0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    .line 142
    array-length p1, v0

    if-lt v2, p1, :cond_3

    .line 143
    iput v4, p0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    :cond_3
    return v1
.end method

.method public isEmpty()Z
    .locals 0

    .line 109
    invoke-virtual {p0}, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public remove()B
    .locals 3

    .line 169
    invoke-virtual {p0}, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    iget v1, p0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    aget-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 175
    iput v1, p0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    .line 176
    array-length v0, v0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x0

    .line 177
    iput v0, p0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    :cond_0
    return v2

    .line 170
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The buffer is already empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public size()I
    .locals 2

    .line 94
    iget v0, p0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    iget v1, p0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    if-ge v0, v1, :cond_0

    .line 95
    iget-object p0, p0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    array-length p0, p0

    sub-int/2addr p0, v1

    add-int/2addr p0, v0

    goto :goto_0

    :cond_0
    sub-int p0, v0, v1

    :goto_0
    return p0
.end method
