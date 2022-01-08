.class public final Lcom/helpscout/beacon/internal/presentation/inject/modules/chat/ChatDomainModuleKt;
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\"\u001c\u0010\u0001\u001a\u00020\u00008\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0001\u0010\u0002\u001a\u0004\u0008\u0003\u0010\u0004\"\u0016\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lorg/koin/core/module/Module;",
        "chatDomain",
        "Lorg/koin/core/module/Module;",
        "getChatDomain",
        "()Lorg/koin/core/module/Module;",
        "",
        "CHAT_SCREEN",
        "Ljava/lang/String;",
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
.field public static final CHAT_SCREEN:Ljava/lang/String; = "CHAT_SCREEN"

.field private static final chatDomain:Lorg/koin/core/module/Module;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/chat/ChatDomainModuleKt$chatDomain$1;->INSTANCE:Lcom/helpscout/beacon/internal/presentation/inject/modules/chat/ChatDomainModuleKt$chatDomain$1;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v1, v0, v2, v3}, Lorg/koin/dsl/ModuleKt;->module$default(ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/chat/ChatDomainModuleKt;->chatDomain:Lorg/koin/core/module/Module;

    return-void
.end method

.method public static final getChatDomain()Lorg/koin/core/module/Module;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/chat/ChatDomainModuleKt;->chatDomain:Lorg/koin/core/module/Module;

    return-object v0
.end method
