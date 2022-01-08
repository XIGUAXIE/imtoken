.class final Lcom/helpscout/beacon/internal/presentation/inject/modules/AppModuleKt$appModule$1$11;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/inject/modules/AppModuleKt$appModule$1;->invoke(Lorg/koin/core/module/Module;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lorg/koin/core/scope/Scope;",
        "Lorg/koin/core/parameter/DefinitionParameters;",
        "Lcom/helpscout/common/mvi/MviCoroutineConfig;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lorg/koin/core/scope/Scope;",
        "Lorg/koin/core/parameter/DefinitionParameters;",
        "it",
        "Lcom/helpscout/common/mvi/MviCoroutineConfig;",
        "invoke",
        "(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/helpscout/common/mvi/MviCoroutineConfig;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/helpscout/beacon/internal/presentation/inject/modules/AppModuleKt$appModule$1$11;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/AppModuleKt$appModule$1$11;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/presentation/inject/modules/AppModuleKt$appModule$1$11;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/AppModuleKt$appModule$1$11;->INSTANCE:Lcom/helpscout/beacon/internal/presentation/inject/modules/AppModuleKt$appModule$1$11;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/helpscout/common/mvi/MviCoroutineConfig;
    .locals 1

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "it"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/helpscout/common/mvi/MviCoroutineConfig;

    new-instance p2, Lcom/helpscout/common/coroutines/DefaultDispatcherProvider;

    invoke-direct {p2}, Lcom/helpscout/common/coroutines/DefaultDispatcherProvider;-><init>()V

    new-instance v0, Lcom/helpscout/beacon/a/d/c/l;

    invoke-direct {v0}, Lcom/helpscout/beacon/a/d/c/l;-><init>()V

    invoke-direct {p1, p2, v0}, Lcom/helpscout/common/mvi/MviCoroutineConfig;-><init>(Lcom/helpscout/common/coroutines/DispatcherProvider;Lcom/helpscout/common/mvi/MviCoroutineExceptionHandler;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/DefinitionParameters;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/inject/modules/AppModuleKt$appModule$1$11;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/helpscout/common/mvi/MviCoroutineConfig;

    move-result-object p1

    return-object p1
.end method
