.class public final synthetic Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$DuqN_yk0WTNCpjHtVeVacO8ux_4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/HashSet;

.field public final synthetic f$1:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$DuqN_yk0WTNCpjHtVeVacO8ux_4;->f$0:Ljava/util/HashSet;

    iput-object p2, p0, Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$DuqN_yk0WTNCpjHtVeVacO8ux_4;->f$1:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$DuqN_yk0WTNCpjHtVeVacO8ux_4;->f$0:Ljava/util/HashSet;

    iget-object p0, p0, Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$DuqN_yk0WTNCpjHtVeVacO8ux_4;->f$1:Ljava/util/HashSet;

    check-cast p1, Ljava/io/File;

    invoke-static {v0, p0, p1}, Lcom/android/providers/telephony/backup/MessageBnR;->lambda$backup$0(Ljava/util/HashSet;Ljava/util/HashSet;Ljava/io/File;)Z

    move-result p0

    return p0
.end method
