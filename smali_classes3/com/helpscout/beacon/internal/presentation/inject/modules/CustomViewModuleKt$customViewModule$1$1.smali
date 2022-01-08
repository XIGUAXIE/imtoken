.class final Lcom/helpscout/beacon/internal/presentation/inject/modules/CustomViewModuleKt$customViewModule$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/inject/modules/CustomViewModuleKt$customViewModule$1;->invoke(Lorg/koin/core/module/Module;)V
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
        "Lcom/helpscout/common/mvi/MviViewModel<",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "Lorg/koin/core/scope/Scope;",
        "Lorg/koin/core/parameter/DefinitionParameters;",
        "it",
        "Lcom/helpscout/common/mvi/MviViewModel;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c;",
        "invoke",
        "(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/helpscout/common/mvi/MviViewModel;",
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
.field public static final INSTANCE:Lcom/helpscout/beacon/internal/presentation/inject/modules/CustomViewModuleKt$customViewModule$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/CustomViewModuleKt$customViewModule$1$1;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/presentation/inject/modules/CustomViewModuleKt$customViewModule$1$1;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/CustomViewModuleKt$customViewModule$1$1;->INSTANCE:Lcom/helpscout/beacon/internal/presentation/inject/modules/CustomViewModuleKt$customViewModule$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/helpscout/common/mvi/MviViewModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/core/parameter/DefinitionParameters;",
            ")",
            "Lcom/helpscout/common/mvi/MviViewModel<",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b;",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c;",
            ">;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/helpscout/common/mvi/MviViewModel;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderReducer;

    const-class v1, Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-direct {v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderReducer;-><init>(Lcom/helpscout/beacon/internal/presentation/common/d;)V

    invoke-direct {p2, v0}, Lcom/helpscout/common/mvi/MviViewModel;-><init>(Lcom/helpscout/common/mvi/MviReducer;)V

    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/DefinitionParameters;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/inject/modules/CustomViewModuleKt$customViewModule$1$1;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object p1

    return-object p1
.end method
