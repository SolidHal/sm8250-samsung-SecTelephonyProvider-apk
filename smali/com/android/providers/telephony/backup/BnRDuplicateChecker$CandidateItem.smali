.class public Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;
.super Ljava/lang/Object;
.source "BnRDuplicateChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/backup/BnRDuplicateChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CandidateItem"
.end annotation


# instance fields
.field public itemMapHashCode:I

.field public msgId:J

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJI)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;->type:Ljava/lang/String;

    .line 83
    iput-wide p2, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;->msgId:J

    .line 85
    iput p6, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;->itemMapHashCode:I

    return-void
.end method


# virtual methods
.method public getCandidateItemMapHashcode()I
    .locals 0

    .line 97
    iget p0, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;->itemMapHashCode:I

    return p0
.end method

.method public getCandidateMsgId()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;->msgId:J

    return-wide v0
.end method

.method public getCandidateType()Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;->type:Ljava/lang/String;

    return-object p0
.end method
