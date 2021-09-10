.class public final enum Lcom/android/providers/telephony/backup/BnRPreferences$Type;
.super Ljava/lang/Enum;
.source "BnRPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/backup/BnRPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/providers/telephony/backup/BnRPreferences$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/providers/telephony/backup/BnRPreferences$Type;

.field public static final enum CHAT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

.field public static final enum FT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

.field public static final enum MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

.field public static final enum SMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 20
    new-instance v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    const-string v1, "SMS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/providers/telephony/backup/BnRPreferences$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->SMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    new-instance v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    const-string v1, "MMS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/providers/telephony/backup/BnRPreferences$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    new-instance v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    const-string v1, "CHAT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/providers/telephony/backup/BnRPreferences$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->CHAT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    new-instance v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    const-string v1, "FT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/providers/telephony/backup/BnRPreferences$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->FT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    .line 19
    sget-object v6, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->SMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->MMS:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->CHAT:Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->$VALUES:[Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/providers/telephony/backup/BnRPreferences$Type;
    .locals 1

    .line 19
    const-class v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/providers/telephony/backup/BnRPreferences$Type;
    .locals 1

    .line 19
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences$Type;->$VALUES:[Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    invoke-virtual {v0}, [Lcom/android/providers/telephony/backup/BnRPreferences$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/providers/telephony/backup/BnRPreferences$Type;

    return-object v0
.end method
