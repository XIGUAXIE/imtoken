.class public final Lorg/koin/androidx/experimental/dsl/ScopeSetExtKt$viewModel$factory$1$$special$$inlined$create$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InstanceBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/androidx/experimental/dsl/ScopeSetExtKt$viewModel$factory$1;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Landroidx/lifecycle/ViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInstanceBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InstanceBuilder.kt\norg/koin/experimental/builder/InstanceBuilderKt$create$args$1\n*L\n1#1,67:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\"\n\u0008\u0000\u0010\u0003\u0018\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
        "T",
        "invoke",
        "()[Ljava/lang/Object;",
        "org/koin/experimental/builder/InstanceBuilderKt$create$args$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $constructor:Ljava/lang/reflect/Constructor;

.field final synthetic $this_create:Lorg/koin/core/scope/Scope;


# direct methods
.method public constructor <init>(Lorg/koin/core/scope/Scope;Ljava/lang/reflect/Constructor;)V
    .locals 0

    iput-object p1, p0, Lorg/koin/androidx/experimental/dsl/ScopeSetExtKt$viewModel$factory$1$$special$$inlined$create$1;->$this_create:Lorg/koin/core/scope/Scope;

    iput-object p2, p0, Lorg/koin/androidx/experimental/dsl/ScopeSetExtKt$viewModel$factory$1$$special$$inlined$create$1;->$constructor:Ljava/lang/reflect/Constructor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/koin/androidx/experimental/dsl/ScopeSetExtKt$viewModel$factory$1$$special$$inlined$create$1;->invoke()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()[Ljava/lang/Object;
    .locals 2

    .line 25
    iget-object v0, p0, Lorg/koin/androidx/experimental/dsl/ScopeSetExtKt$viewModel$factory$1$$special$$inlined$create$1;->$constructor:Ljava/lang/reflect/Constructor;

    iget-object v1, p0, Lorg/koin/androidx/experimental/dsl/ScopeSetExtKt$viewModel$factory$1$$special$$inlined$create$1;->$this_create:Lorg/koin/core/scope/Scope;

    invoke-static {v0, v1}, Lorg/koin/experimental/builder/InstanceBuilderKt;->getArguments(Ljava/lang/reflect/Constructor;Lorg/koin/core/scope/Scope;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
