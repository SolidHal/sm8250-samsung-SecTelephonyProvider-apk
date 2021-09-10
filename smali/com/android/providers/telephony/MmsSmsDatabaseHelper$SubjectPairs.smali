.class Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;
.super Ljava/lang/Object;
.source "MmsSmsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubjectPairs"
.end annotation


# instance fields
.field private mMsgId:J

.field private mSub_cs:I

.field private mSubject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 9715
    iput-wide v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;->mMsgId:J

    const-string v0, ""

    .line 9716
    iput-object v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;->mSubject:Ljava/lang/String;

    const/4 v0, -0x1

    .line 9717
    iput v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;->mSub_cs:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0

    .line 9720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9721
    iput-wide p1, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;->mMsgId:J

    .line 9722
    iput-object p3, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;->mSubject:Ljava/lang/String;

    .line 9723
    iput p4, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;->mSub_cs:I

    return-void
.end method


# virtual methods
.method public getMsgId()J
    .locals 2

    .line 9728
    iget-wide v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;->mMsgId:J

    return-wide v0
.end method

.method public getSubCs()I
    .locals 0

    .line 9736
    iget p0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;->mSub_cs:I

    return p0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 0

    .line 9732
    iget-object p0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;->mSubject:Ljava/lang/String;

    return-object p0
.end method
