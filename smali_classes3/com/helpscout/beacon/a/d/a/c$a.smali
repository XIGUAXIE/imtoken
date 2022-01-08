.class public final Lcom/helpscout/beacon/a/d/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/a/d/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lorg/koin/core/KoinApplication;

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/koin/core/module/Module;",
            ">;"
        }
    .end annotation
.end field

.field static final synthetic d:Lcom/helpscout/beacon/a/d/a/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/helpscout/beacon/a/d/a/c$a;

    invoke-direct {v0}, Lcom/helpscout/beacon/a/d/a/c$a;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/a/d/a/c$a;->d:Lcom/helpscout/beacon/a/d/a/c$a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/a/d/a/c$a;->a:Ljava/lang/Object;

    const/16 v0, 0xe

    new-array v0, v0, [Lorg/koin/core/module/Module;

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/inject/modules/AppModuleKt;->getAppModule()Lorg/koin/core/module/Module;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/inject/modules/NetworkModuleKt;->getNetworkModule()Lorg/koin/core/module/Module;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/inject/modules/DataModuleKt;->getDataModule()Lorg/koin/core/module/Module;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/inject/modules/UsecaseModuleKt;->getUseCasesModule()Lorg/koin/core/module/Module;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/inject/modules/PushModuleKt;->getPushModule()Lorg/koin/core/module/Module;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/inject/modules/DomainModuleKt;->getDomain()Lorg/koin/core/module/Module;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/inject/modules/CustomViewModuleKt;->getCustomViewModule()Lorg/koin/core/module/Module;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/inject/modules/NetworkModuleKt;->provideApiClient()Lorg/koin/core/module/Module;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/inject/modules/chat/ChatAppModuleKt;->getChatApp()Lorg/koin/core/module/Module;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/inject/modules/chat/ChatApiModuleKt;->provideChatApiModule()Lorg/koin/core/module/Module;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/inject/modules/chat/ChatDataModuleKt;->getChatData()Lorg/koin/core/module/Module;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/inject/modules/chat/ChatRealtimeModuleKt;->getChatRealtime()Lorg/koin/core/module/Module;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/inject/modules/chat/ChatDomainModuleKt;->getChatDomain()Lorg/koin/core/module/Module;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/inject/modules/chat/ChatPushModuleKt;->getChatPushModule()Lorg/koin/core/module/Module;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/helpscout/beacon/a/d/a/c$a;->c:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/helpscout/beacon/a/d/a/c$a;Landroid/content/Context;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/helpscout/beacon/a/d/a/c$a;->c:Ljava/util/List;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/a/d/a/c$a;->a(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()Lorg/koin/core/KoinApplication;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/a/d/a/c$a;->b:Lorg/koin/core/KoinApplication;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/koin/core/module/Module;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modules"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/helpscout/beacon/a/d/a/c$a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/helpscout/beacon/a/d/a/c$a;->b:Lorg/koin/core/KoinApplication;

    if-nez v1, :cond_0

    new-instance v1, Lcom/helpscout/beacon/a/d/a/c$a$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/helpscout/beacon/a/d/a/c$a$a;-><init>(Lcom/helpscout/beacon/a/d/a/c$a;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v1}, Lorg/koin/dsl/KoinApplicationKt;->koinApplication(Lkotlin/jvm/functions/Function1;)Lorg/koin/core/KoinApplication;

    move-result-object p1

    sput-object p1, Lcom/helpscout/beacon/a/d/a/c$a;->b:Lorg/koin/core/KoinApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/koin/core/module/Module;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/helpscout/beacon/a/d/a/c$a;->c:Ljava/util/List;

    return-object v0
.end method
