.class public final synthetic Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$b3UIn12KR-cVyRAtdzh3hvNLQOw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/providers/telephony/backup/FreeMessageBnR;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/providers/telephony/backup/FreeMessageBnR;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$b3UIn12KR-cVyRAtdzh3hvNLQOw;->f$0:Lcom/android/providers/telephony/backup/FreeMessageBnR;

    iput-object p2, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$b3UIn12KR-cVyRAtdzh3hvNLQOw;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$b3UIn12KR-cVyRAtdzh3hvNLQOw;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$b3UIn12KR-cVyRAtdzh3hvNLQOw;->f$3:Ljava/lang/String;

    iput p5, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$b3UIn12KR-cVyRAtdzh3hvNLQOw;->f$4:I

    iput-object p6, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$b3UIn12KR-cVyRAtdzh3hvNLQOw;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$b3UIn12KR-cVyRAtdzh3hvNLQOw;->f$0:Lcom/android/providers/telephony/backup/FreeMessageBnR;

    iget-object v1, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$b3UIn12KR-cVyRAtdzh3hvNLQOw;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$b3UIn12KR-cVyRAtdzh3hvNLQOw;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$b3UIn12KR-cVyRAtdzh3hvNLQOw;->f$3:Ljava/lang/String;

    iget v4, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$b3UIn12KR-cVyRAtdzh3hvNLQOw;->f$4:I

    iget-object v5, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$b3UIn12KR-cVyRAtdzh3hvNLQOw;->f$5:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->lambda$onReceive$1$FreeMessageBnR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
