.class public Lcom/android/providers/telephony/TelephonyProvider$CscNodeList;
.super Ljava/lang/Object;
.source "TelephonyProvider.java"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/TelephonyProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CscNodeList"
.end annotation


# instance fields
.field private children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider$CscNodeList;->children:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method appendChild(Lorg/w3c/dom/Node;)V
    .locals 0

    .line 9352
    iget-object p0, p0, Lcom/android/providers/telephony/TelephonyProvider$CscNodeList;->children:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getLength()I
    .locals 0

    .line 9357
    iget-object p0, p0, Lcom/android/providers/telephony/TelephonyProvider$CscNodeList;->children:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 0

    .line 9362
    iget-object p0, p0, Lcom/android/providers/telephony/TelephonyProvider$CscNodeList;->children:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method
