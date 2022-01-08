.class public final Lcom/helpscout/beacon/internal/presentation/inject/modules/NetworkModuleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u001a\u000f\u0010\u0001\u001a\u00020\u0000H\u0000\u00a2\u0006\u0004\u0008\u0001\u0010\u0002\u001a7\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\"\u0016\u0010\u0010\u001a\u00020\u00008\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\"\u0016\u0010\u0012\u001a\u00020\u00008\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0011\"\u0019\u0010\u0013\u001a\u00020\u00008\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0011\u001a\u0004\u0008\u0014\u0010\u0002\u00a8\u0006\u0015"
    }
    d2 = {
        "Lorg/koin/core/module/Module;",
        "provideApiClient",
        "()Lorg/koin/core/module/Module;",
        "",
        "logsEnabled",
        "Lcom/helpscout/beacon/internal/core/api/e/b;",
        "docsCookieInterceptor",
        "Lcom/helpscout/beacon/internal/core/api/c;",
        "sDKIdentifierInterceptor",
        "Lcom/helpscout/beacon/internal/core/api/b;",
        "deviceIdInterceptor",
        "Lcom/helpscout/beacon/internal/core/api/d;",
        "userAgentInterceptor",
        "Lokhttp3/OkHttpClient;",
        "createOkHttpClient",
        "(ZLcom/helpscout/beacon/internal/core/api/e/b;Lcom/helpscout/beacon/internal/core/api/c;Lcom/helpscout/beacon/internal/core/api/b;Lcom/helpscout/beacon/internal/core/api/d;)Lokhttp3/OkHttpClient;",
        "apiClientModule",
        "Lorg/koin/core/module/Module;",
        "mockApiClientModule",
        "networkModule",
        "getNetworkModule",
        "beacon_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final apiClientModule:Lorg/koin/core/module/Module;

.field private static final mockApiClientModule:Lorg/koin/core/module/Module;

.field private static final networkModule:Lorg/koin/core/module/Module;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/NetworkModuleKt$networkModule$1;->INSTANCE:Lcom/helpscout/beacon/internal/presentation/inject/modules/NetworkModuleKt$networkModule$1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v2, v2, v0, v3, v1}, Lorg/koin/dsl/ModuleKt;->module$default(ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/NetworkModuleKt;->networkModule:Lorg/koin/core/module/Module;

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/NetworkModuleKt$apiClientModule$1;->INSTANCE:Lcom/helpscout/beacon/internal/presentation/inject/modules/NetworkModuleKt$apiClientModule$1;

    const/4 v3, 0x1

    invoke-static {v2, v3, v0, v3, v1}, Lorg/koin/dsl/ModuleKt;->module$default(ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/NetworkModuleKt;->apiClientModule:Lorg/koin/core/module/Module;

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/NetworkModuleKt$mockApiClientModule$1;->INSTANCE:Lcom/helpscout/beacon/internal/presentation/inject/modules/NetworkModuleKt$mockApiClientModule$1;

    invoke-static {v2, v3, v0, v3, v1}, Lorg/koin/dsl/ModuleKt;->module$default(ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/NetworkModuleKt;->mockApiClientModule:Lorg/koin/core/module/Module;

    return-void
.end method

.method public static final synthetic access$createOkHttpClient(ZLcom/helpscout/beacon/internal/core/api/e/b;Lcom/helpscout/beacon/internal/core/api/c;Lcom/helpscout/beacon/internal/core/api/b;Lcom/helpscout/beacon/internal/core/api/d;)Lokhttp3/OkHttpClient;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/helpscout/beacon/internal/presentation/inject/modules/NetworkModuleKt;->createOkHttpClient(ZLcom/helpscout/beacon/internal/core/api/e/b;Lcom/helpscout/beacon/internal/core/api/c;Lcom/helpscout/beacon/internal/core/api/b;Lcom/helpscout/beacon/internal/core/api/d;)Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method private static final createOkHttpClient(ZLcom/helpscout/beacon/internal/core/api/e/b;Lcom/helpscout/beacon/internal/core/api/c;Lcom/helpscout/beacon/internal/core/api/b;Lcom/helpscout/beacon/internal/core/api/d;)Lokhttp3/OkHttpClient;
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/internal/core/api/a;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/core/api/a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/helpscout/beacon/internal/core/api/a;->a(Z)Lcom/helpscout/beacon/internal/core/api/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/helpscout/beacon/internal/core/api/a;->b(Z)Lcom/helpscout/beacon/internal/core/api/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/core/api/a;->a(Lcom/helpscout/beacon/internal/core/api/e/b;)Lcom/helpscout/beacon/internal/core/api/a;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/helpscout/beacon/internal/core/api/a;->a(Lcom/helpscout/beacon/internal/core/api/d;)Lcom/helpscout/beacon/internal/core/api/a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/helpscout/beacon/internal/core/api/a;->a(Lcom/helpscout/beacon/internal/core/api/c;)Lcom/helpscout/beacon/internal/core/api/a;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/helpscout/beacon/internal/core/api/a;->a(Lcom/helpscout/beacon/internal/core/api/b;)Lcom/helpscout/beacon/internal/core/api/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/core/api/a;->a()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static final getNetworkModule()Lorg/koin/core/module/Module;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/NetworkModuleKt;->networkModule:Lorg/koin/core/module/Module;

    return-object v0
.end method

.method public static final provideApiClient()Lorg/koin/core/module/Module;
    .locals 2

    const-string v0, "release"

    const-string v1, "mock"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/NetworkModuleKt;->mockApiClientModule:Lorg/koin/core/module/Module;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/NetworkModuleKt;->apiClientModule:Lorg/koin/core/module/Module;

    :goto_0
    return-object v0
.end method
