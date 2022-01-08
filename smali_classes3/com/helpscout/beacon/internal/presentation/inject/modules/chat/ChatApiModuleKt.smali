.class public final Lcom/helpscout/beacon/internal/presentation/inject/modules/chat/ChatApiModuleKt;
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
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a\u000f\u0010\u0001\u001a\u00020\u0000H\u0000\u00a2\u0006\u0004\u0008\u0001\u0010\u0002\"\u0016\u0010\u0003\u001a\u00020\u00008\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004\"\u0016\u0010\u0005\u001a\u00020\u00008\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lorg/koin/core/module/Module;",
        "provideChatApiModule",
        "()Lorg/koin/core/module/Module;",
        "chatApi",
        "Lorg/koin/core/module/Module;",
        "mockChatApi",
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
.field private static final chatApi:Lorg/koin/core/module/Module;

.field private static final mockChatApi:Lorg/koin/core/module/Module;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/chat/ChatApiModuleKt$chatApi$1;->INSTANCE:Lcom/helpscout/beacon/internal/presentation/inject/modules/chat/ChatApiModuleKt$chatApi$1;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v3, v3, v0, v2, v1}, Lorg/koin/dsl/ModuleKt;->module$default(ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/chat/ChatApiModuleKt;->chatApi:Lorg/koin/core/module/Module;

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/chat/ChatApiModuleKt$mockChatApi$1;->INSTANCE:Lcom/helpscout/beacon/internal/presentation/inject/modules/chat/ChatApiModuleKt$mockChatApi$1;

    invoke-static {v3, v3, v0, v2, v1}, Lorg/koin/dsl/ModuleKt;->module$default(ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/chat/ChatApiModuleKt;->mockChatApi:Lorg/koin/core/module/Module;

    return-void
.end method

.method public static final provideChatApiModule()Lorg/koin/core/module/Module;
    .locals 2

    const-string v0, "release"

    const-string v1, "mock"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/chat/ChatApiModuleKt;->mockChatApi:Lorg/koin/core/module/Module;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/chat/ChatApiModuleKt;->chatApi:Lorg/koin/core/module/Module;

    :goto_0
    return-object v0
.end method
