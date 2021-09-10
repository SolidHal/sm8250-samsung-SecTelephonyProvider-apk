.class public Lcom/android/providers/telephony/TelephonyReflector;
.super Ljava/lang/Object;
.source "TelephonyReflector.java"


# static fields
.field private static InvalidSubscriptionId:Ljava/lang/String;

.field private static MmsSubId:Ljava/lang/String;

.field private static MmsSubscriptionId:Ljava/lang/String;

.field private static PendingMessageSubId:Ljava/lang/String;

.field private static PendingMessageSubscriptionId:Ljava/lang/String;

.field private static SmsSubId:Ljava/lang/String;

.field private static SmsSubscriptionId:Ljava/lang/String;

.field private static getSmsManagerForSubscriptionId:Ljava/lang/reflect/Method;

.field private static getSubId:Ljava/lang/reflect/Method;

.field private static mMultiSimManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static mSmsManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static mSubscriptionManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private static setDefaultSmsSubId:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getEnableLollipopMr1Patch()Z
    .locals 2

    .line 235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getInvalidSubscriptionId()Ljava/lang/String;
    .locals 3

    .line 153
    sget-object v0, Lcom/android/providers/telephony/TelephonyReflector;->InvalidSubscriptionId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "android.telephony.SubscriptionManager"

    const-string v2, "INVALID_SUBSCRIPTION_ID"

    .line 154
    invoke-static {v1, v0, v2}, Lcom/android/providers/telephony/MethodReflector;->getInt(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/TelephonyReflector;->InvalidSubscriptionId:Ljava/lang/String;

    .line 157
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/TelephonyReflector;->InvalidSubscriptionId:Ljava/lang/String;

    return-object v0
.end method

.method public static getMmsSubId()Ljava/lang/String;
    .locals 3

    .line 129
    sget-object v0, Lcom/android/providers/telephony/TelephonyReflector;->MmsSubId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "android.provider.Telephony$Mms"

    const-string v2, "SUB_ID"

    .line 130
    invoke-static {v1, v0, v2}, Lcom/android/providers/telephony/MethodReflector;->getFieldValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/android/providers/telephony/TelephonyReflector;->MmsSubId:Ljava/lang/String;

    .line 133
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/TelephonyReflector;->MmsSubId:Ljava/lang/String;

    return-object v0
.end method

.method public static getMmsSubscriptionId()Ljava/lang/String;
    .locals 3

    .line 121
    sget-object v0, Lcom/android/providers/telephony/TelephonyReflector;->MmsSubscriptionId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "android.provider.Telephony$Mms"

    const-string v2, "SUBSCRIPTION_ID"

    .line 122
    invoke-static {v1, v0, v2}, Lcom/android/providers/telephony/MethodReflector;->getFieldValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/android/providers/telephony/TelephonyReflector;->MmsSubscriptionId:Ljava/lang/String;

    .line 125
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/TelephonyReflector;->MmsSubscriptionId:Ljava/lang/String;

    return-object v0
.end method

.method public static getMultiSimManagerReflectorClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 56
    sget-object v0, Lcom/android/providers/telephony/TelephonyReflector;->mMultiSimManager:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.samsung.android.telephony.MultiSimManager"

    .line 57
    invoke-static {v0}, Lcom/android/providers/telephony/MethodReflector;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/TelephonyReflector;->mMultiSimManager:Ljava/lang/Class;

    .line 60
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/TelephonyReflector;->mMultiSimManager:Ljava/lang/Class;

    return-object v0
.end method

.method public static getPendingMessageSubId()Ljava/lang/String;
    .locals 3

    .line 145
    sget-object v0, Lcom/android/providers/telephony/TelephonyReflector;->PendingMessageSubId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "android.provider.Telephony$MmsSms$PendingMessages"

    const-string v2, "SUB_ID"

    .line 146
    invoke-static {v1, v0, v2}, Lcom/android/providers/telephony/MethodReflector;->getFieldValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/android/providers/telephony/TelephonyReflector;->PendingMessageSubId:Ljava/lang/String;

    .line 149
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/TelephonyReflector;->PendingMessageSubId:Ljava/lang/String;

    return-object v0
.end method

.method public static getPendingMessageSubscriptionId()Ljava/lang/String;
    .locals 3

    .line 137
    sget-object v0, Lcom/android/providers/telephony/TelephonyReflector;->PendingMessageSubscriptionId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "android.provider.Telephony$MmsSms$PendingMessages"

    const-string v2, "SUBSCRIPTION_ID"

    .line 138
    invoke-static {v1, v0, v2}, Lcom/android/providers/telephony/MethodReflector;->getFieldValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/android/providers/telephony/TelephonyReflector;->PendingMessageSubscriptionId:Ljava/lang/String;

    .line 141
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/TelephonyReflector;->PendingMessageSubscriptionId:Ljava/lang/String;

    return-object v0
.end method

.method public static getSimSlotID(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, 0x0

    .line 245
    invoke-static {p0, v0}, Lcom/android/providers/telephony/TelephonyReflector;->getSubscriptionId(Landroid/content/Context;I)[I

    move-result-object p0

    aget p0, p0, v0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static getSmsManager(Landroid/content/Context;I)Landroid/telephony/SmsManager;
    .locals 3

    .line 212
    invoke-static {}, Lcom/android/providers/telephony/TelephonyReflector;->getEnableLollipopMr1Patch()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TelephonyReflector"

    if-eqz v0, :cond_1

    .line 213
    invoke-static {p0, p1}, Lcom/android/providers/telephony/TelephonyReflector;->getSubscriptionId(Landroid/content/Context;I)[I

    move-result-object p0

    if-eqz p0, :cond_0

    .line 214
    array-length p1, p0

    if-lez p1, :cond_0

    .line 215
    aget p0, p0, v1

    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyReflector;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "getSmsManager mSubscriptionId is null or 0 length"

    .line 217
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    .line 220
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object p0

    .line 221
    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyReflector;->getSubId(I)[J

    move-result-object p1

    if-eqz p1, :cond_2

    .line 222
    array-length v0, p1

    if-lez v0, :cond_2

    .line 223
    aget-wide v0, p1, v1

    invoke-static {v0, v1}, Lcom/android/providers/telephony/TelephonyReflector;->setDefaultSmsSubId(J)V

    goto :goto_0

    :cond_2
    const-string p1, "getSmsManager mSubID is null or 0 length"

    .line 225
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method public static getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;
    .locals 5

    .line 200
    sget-object v0, Lcom/android/providers/telephony/TelephonyReflector;->getSmsManagerForSubscriptionId:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 201
    invoke-static {}, Lcom/android/providers/telephony/TelephonyReflector;->getSmsManagerReflectorClass()Ljava/lang/Class;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    const-string v4, "getSmsManagerForSubscriptionId"

    invoke-static {v0, v4, v3}, Lcom/android/providers/telephony/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/TelephonyReflector;->getSmsManagerForSubscriptionId:Ljava/lang/reflect/Method;

    .line 204
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/TelephonyReflector;->getSmsManagerForSubscriptionId:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v0, v2}, Lcom/android/providers/telephony/MethodReflector;->invokeStatic(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SmsManager;

    return-object p0
.end method

.method public static getSmsManagerReflectorClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/android/providers/telephony/TelephonyReflector;->mSmsManager:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "android.telephony.SmsManager"

    .line 49
    invoke-static {v0}, Lcom/android/providers/telephony/MethodReflector;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/TelephonyReflector;->mSmsManager:Ljava/lang/Class;

    .line 52
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/TelephonyReflector;->mSmsManager:Ljava/lang/Class;

    return-object v0
.end method

.method public static getSmsSubId()Ljava/lang/String;
    .locals 3

    .line 113
    sget-object v0, Lcom/android/providers/telephony/TelephonyReflector;->SmsSubId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "android.provider.Telephony$Sms"

    const-string v2, "SUB_ID"

    .line 114
    invoke-static {v1, v0, v2}, Lcom/android/providers/telephony/MethodReflector;->getFieldValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/android/providers/telephony/TelephonyReflector;->SmsSubId:Ljava/lang/String;

    .line 117
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/TelephonyReflector;->SmsSubId:Ljava/lang/String;

    return-object v0
.end method

.method public static getSmsSubscriptionId()Ljava/lang/String;
    .locals 3

    .line 105
    sget-object v0, Lcom/android/providers/telephony/TelephonyReflector;->SmsSubscriptionId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "android.provider.Telephony$Sms"

    const-string v2, "SUBSCRIPTION_ID"

    .line 106
    invoke-static {v1, v0, v2}, Lcom/android/providers/telephony/MethodReflector;->getFieldValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/android/providers/telephony/TelephonyReflector;->SmsSubscriptionId:Ljava/lang/String;

    .line 109
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/TelephonyReflector;->SmsSubscriptionId:Ljava/lang/String;

    return-object v0
.end method

.method public static getSubId(I)[J
    .locals 5

    .line 65
    sget-object v0, Lcom/android/providers/telephony/TelephonyReflector;->getSubId:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Lcom/android/providers/telephony/TelephonyReflector;->getMultiSimManagerReflectorClass()Ljava/lang/Class;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    const-string v4, "getSubId"

    invoke-static {v0, v4, v3}, Lcom/android/providers/telephony/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/TelephonyReflector;->getSubId:Ljava/lang/reflect/Method;

    .line 69
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/TelephonyReflector;->getSubId:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v0, v2}, Lcom/android/providers/telephony/MethodReflector;->invokeStatic(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    return-object p0
.end method

.method public static getSubIdString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "sms"

    .line 163
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-static {}, Lcom/android/providers/telephony/TelephonyReflector;->getEnableLollipopMr1Patch()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 165
    invoke-static {}, Lcom/android/providers/telephony/TelephonyReflector;->getSmsSubscriptionId()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 167
    :cond_0
    invoke-static {}, Lcom/android/providers/telephony/TelephonyReflector;->getSmsSubId()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string v0, "mms"

    .line 169
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    invoke-static {}, Lcom/android/providers/telephony/TelephonyReflector;->getEnableLollipopMr1Patch()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 171
    invoke-static {}, Lcom/android/providers/telephony/TelephonyReflector;->getMmsSubscriptionId()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 173
    :cond_2
    invoke-static {}, Lcom/android/providers/telephony/TelephonyReflector;->getMmsSubId()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const-string v0, "pending"

    .line 175
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 176
    invoke-static {}, Lcom/android/providers/telephony/TelephonyReflector;->getEnableLollipopMr1Patch()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 177
    invoke-static {}, Lcom/android/providers/telephony/TelephonyReflector;->getPendingMessageSubscriptionId()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 179
    :cond_4
    invoke-static {}, Lcom/android/providers/telephony/TelephonyReflector;->getPendingMessageSubId()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    const-string v0, "default"

    .line 181
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "default0"

    if-nez v0, :cond_7

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    const-string p0, "sub_id"

    goto :goto_1

    .line 182
    :cond_7
    :goto_0
    invoke-static {}, Lcom/android/providers/telephony/TelephonyReflector;->getEnableLollipopMr1Patch()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 183
    invoke-static {}, Lcom/android/providers/telephony/TelephonyReflector;->getInvalidSubscriptionId()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 185
    :cond_8
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "0"

    goto :goto_1

    :cond_9
    const-string p0, "-1"

    :goto_1
    return-object p0
.end method

.method public static getSubscriptionId(Landroid/content/Context;I)[I
    .locals 2

    .line 75
    sget-object v0, Lcom/android/providers/telephony/TelephonyReflector;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-nez v0, :cond_0

    .line 76
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    sput-object p0, Lcom/android/providers/telephony/TelephonyReflector;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 81
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 83
    :try_start_0
    sget-object p0, Lcom/android/providers/telephony/TelephonyReflector;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p0, :cond_1

    .line 89
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    aput p0, p1, v0

    return-object p1

    :catchall_0
    move-exception p0

    .line 85
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    throw p0
.end method

.method public static getSubscriptionManagerReflectorClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/android/providers/telephony/TelephonyReflector;->mSubscriptionManager:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "android.telephony.SubscriptionManager"

    .line 41
    invoke-static {v0}, Lcom/android/providers/telephony/MethodReflector;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/TelephonyReflector;->mSubscriptionManager:Ljava/lang/Class;

    .line 44
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/TelephonyReflector;->mSubscriptionManager:Ljava/lang/Class;

    return-object v0
.end method

.method public static setDefaultSmsSubId(J)V
    .locals 5

    .line 97
    sget-object v0, Lcom/android/providers/telephony/TelephonyReflector;->setDefaultSmsSubId:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Lcom/android/providers/telephony/TelephonyReflector;->getSubscriptionManagerReflectorClass()Ljava/lang/Class;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    const-string v4, "setDefaultSmsSubId"

    invoke-static {v0, v4, v3}, Lcom/android/providers/telephony/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/TelephonyReflector;->setDefaultSmsSubId:Ljava/lang/reflect/Method;

    .line 101
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/TelephonyReflector;->setDefaultSmsSubId:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v0, v2}, Lcom/android/providers/telephony/MethodReflector;->invokeStatic(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
