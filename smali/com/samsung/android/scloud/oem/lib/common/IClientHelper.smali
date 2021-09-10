.class public abstract Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;
.super Ljava/lang/Object;
.source "IClientHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getClient(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getServiceHandler(Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;
.end method

.method public handleRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 28
    invoke-virtual {p0, p2}, Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;->getServiceHandler(Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 30
    invoke-virtual {p0, p3}, Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;->getClient(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p1, p0, p3, p4}, Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;->handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
