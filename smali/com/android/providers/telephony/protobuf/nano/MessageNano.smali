.class public abstract Lcom/android/providers/telephony/protobuf/nano/MessageNano;
.super Ljava/lang/Object;
.source "MessageNano.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final toByteArray(Lcom/android/providers/telephony/protobuf/nano/MessageNano;[BII)V
    .locals 0

    .line 116
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/providers/telephony/protobuf/nano/CodedOutputByteBufferNano;->newInstance([BII)Lcom/android/providers/telephony/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object p1

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/providers/telephony/protobuf/nano/MessageNano;->writeTo(Lcom/android/providers/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 118
    invoke-virtual {p1}, Lcom/android/providers/telephony/protobuf/nano/CodedOutputByteBufferNano;->checkNoSpaceLeft()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 120
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final toByteArray(Lcom/android/providers/telephony/protobuf/nano/MessageNano;)[B
    .locals 3

    .line 100
    invoke-virtual {p0}, Lcom/android/providers/telephony/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 101
    invoke-static {p0, v1, v2, v0}, Lcom/android/providers/telephony/protobuf/nano/MessageNano;->toByteArray(Lcom/android/providers/telephony/protobuf/nano/MessageNano;[BII)V

    return-object v1
.end method


# virtual methods
.method public clone()Lcom/android/providers/telephony/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 196
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/telephony/protobuf/nano/MessageNano;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/android/providers/telephony/protobuf/nano/MessageNano;->clone()Lcom/android/providers/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSerializedSize()I
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/android/providers/telephony/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 188
    invoke-static {p0}, Lcom/android/providers/telephony/protobuf/nano/MessageNanoPrinter;->print(Lcom/android/providers/telephony/protobuf/nano/MessageNano;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/android/providers/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
