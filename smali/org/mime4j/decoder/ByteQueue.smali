.class public Lorg/mime4j/decoder/ByteQueue;
.super Ljava/lang/Object;
.source "ByteQueue.java"


# instance fields
.field private buf:Lorg/mime4j/decoder/UnboundedFifoByteBuffer;

.field private initialCapacity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lorg/mime4j/decoder/ByteQueue;->initialCapacity:I

    .line 27
    new-instance v0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-direct {v0}, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;-><init>()V

    iput-object v0, p0, Lorg/mime4j/decoder/ByteQueue;->buf:Lorg/mime4j/decoder/UnboundedFifoByteBuffer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lorg/mime4j/decoder/ByteQueue;->initialCapacity:I

    .line 31
    new-instance v0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-direct {v0, p1}, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/mime4j/decoder/ByteQueue;->buf:Lorg/mime4j/decoder/UnboundedFifoByteBuffer;

    .line 32
    iput p1, p0, Lorg/mime4j/decoder/ByteQueue;->initialCapacity:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 48
    iget v0, p0, Lorg/mime4j/decoder/ByteQueue;->initialCapacity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 49
    new-instance v1, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-direct {v1, v0}, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;-><init>(I)V

    iput-object v1, p0, Lorg/mime4j/decoder/ByteQueue;->buf:Lorg/mime4j/decoder/UnboundedFifoByteBuffer;

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-direct {v0}, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;-><init>()V

    iput-object v0, p0, Lorg/mime4j/decoder/ByteQueue;->buf:Lorg/mime4j/decoder/UnboundedFifoByteBuffer;

    :goto_0
    return-void
.end method

.method public count()I
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/mime4j/decoder/ByteQueue;->buf:Lorg/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-virtual {p0}, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->size()I

    move-result p0

    return p0
.end method

.method public dequeue()B
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/mime4j/decoder/ByteQueue;->buf:Lorg/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-virtual {p0}, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->remove()B

    move-result p0

    return p0
.end method

.method public enqueue(B)V
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/mime4j/decoder/ByteQueue;->buf:Lorg/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-virtual {p0, p1}, Lorg/mime4j/decoder/UnboundedFifoByteBuffer;->add(B)Z

    return-void
.end method
