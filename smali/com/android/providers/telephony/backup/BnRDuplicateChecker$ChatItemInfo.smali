.class public Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemInfo;
.super Ljava/lang/Object;
.source "BnRDuplicateChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/backup/BnRDuplicateChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatItemInfo"
.end annotation


# instance fields
.field public chat4SMSHashcode:I

.field public chatHashCode:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemInfo;->chatHashCode:I

    .line 63
    iput p2, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemInfo;->chat4SMSHashcode:I

    return-void
.end method


# virtual methods
.method public getChat4SMSHashCode()I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemInfo;->chat4SMSHashcode:I

    return p0
.end method

.method public getChatHashCode()I
    .locals 0

    .line 67
    iget p0, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemInfo;->chatHashCode:I

    return p0
.end method
