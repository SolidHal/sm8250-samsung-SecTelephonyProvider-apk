.class public Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;
.super Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;
.source "FileClientManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileClientManager"


# instance fields
.field private final backupClient:Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;

.field private final needToBeProcessedFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final processedKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->processedKeyList:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->needToBeProcessedFileList:Ljava/util/ArrayList;

    .line 57
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->backupClient:Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;

    .line 59
    iget-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    const-string v1, "backupPrepare"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$2;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    const-string v1, "getFileMeta"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$3;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    const-string v1, "backupComplete"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$4;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    const-string v1, "restorePrepare"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$5;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    const-string v1, "transactionBegin"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$6;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    const-string v1, "getFileList"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$7;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    const-string v1, "restoreFile"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$8;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    const-string v1, "transactionEnd"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$9;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    const-string v1, "restoreComplete"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$10;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    const-string v1, "deleteRestoreFile"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$11;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    const-string v1, "checkAndUpdateReuseDB"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$12;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    const-string v1, "completeFile"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$13;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    const-string v1, "clearReuseFileDB"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$14;

    invoke-direct {v0, p0}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$14;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)V

    const-string p0, "requestCancel"

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)Ljava/util/ArrayList;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->processedKeyList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;)Ljava/util/ArrayList;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->needToBeProcessedFileList:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public getClient(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 325
    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->backupClient:Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;

    return-object p0
.end method

.method public getServiceHandler(Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;

    return-object p0
.end method
