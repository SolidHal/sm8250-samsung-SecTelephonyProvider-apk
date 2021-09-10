.class public final Lcom/android/providers/telephony/protobuf/nano/InternalNano;
.super Ljava/lang/Object;
.source "InternalNano.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 70
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    .line 71
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    return-void
.end method

.method public static cloneUnknownFieldData(Lcom/android/providers/telephony/protobuf/nano/ExtendableMessageNano;Lcom/android/providers/telephony/protobuf/nano/ExtendableMessageNano;)V
    .locals 0

    .line 543
    iget-object p0, p0, Lcom/android/providers/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/providers/telephony/protobuf/nano/FieldArray;

    if-nez p0, :cond_0

    return-void

    .line 544
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/telephony/protobuf/nano/FieldArray;->clone()Lcom/android/providers/telephony/protobuf/nano/FieldArray;

    const/4 p0, 0x0

    throw p0
.end method
