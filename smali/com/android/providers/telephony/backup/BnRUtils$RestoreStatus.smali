.class final enum Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;
.super Ljava/lang/Enum;
.source "BnRUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/backup/BnRUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RestoreStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

.field public static final enum NONE:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

.field public static final enum READY:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

.field public static final enum RUNNING:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 2517
    new-instance v0, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->NONE:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    new-instance v0, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    const-string v1, "READY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->READY:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    new-instance v0, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    const-string v1, "RUNNING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->RUNNING:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    .line 2516
    sget-object v5, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->NONE:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->READY:Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->$VALUES:[Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2516
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;
    .locals 1

    .line 2516
    const-class v0, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    return-object p0
.end method

.method public static values()[Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;
    .locals 1

    .line 2516
    sget-object v0, Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->$VALUES:[Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    invoke-virtual {v0}, [Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/providers/telephony/backup/BnRUtils$RestoreStatus;

    return-object v0
.end method
