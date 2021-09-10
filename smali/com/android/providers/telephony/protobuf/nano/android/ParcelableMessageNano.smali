.class public abstract Lcom/android/providers/telephony/protobuf/nano/android/ParcelableMessageNano;
.super Lcom/android/providers/telephony/protobuf/nano/MessageNano;
.source "ParcelableMessageNano.java"

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/providers/telephony/protobuf/nano/MessageNano;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 50
    const-class p2, Lcom/android/providers/telephony/protobuf/nano/android/ParcelableMessageNano;

    invoke-static {p2, p0, p1}, Lcom/android/providers/telephony/protobuf/nano/android/ParcelableMessageNanoCreator;->writeToParcel(Ljava/lang/Class;Lcom/android/providers/telephony/protobuf/nano/MessageNano;Landroid/os/Parcel;)V

    return-void
.end method
