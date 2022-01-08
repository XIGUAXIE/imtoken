.class public final Lorg/koin/androidx/scope/LifecycleScopeDelegate;
.super Ljava/lang/Object;
.source "LifecycleScopeDelegate.kt"

# interfaces
.implements Lkotlin/properties/ReadOnlyProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/properties/ReadOnlyProperty<",
        "Landroidx/lifecycle/LifecycleOwner;",
        "Lorg/koin/core/scope/Scope;",
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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B-\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0014\u0008\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00030\u0008\u00a2\u0006\u0002\u0010\nJ\u001d\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00022\n\u0010\u0010\u001a\u0006\u0012\u0002\u0008\u00030\u0011H\u0096\u0002R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/koin/androidx/scope/LifecycleScopeDelegate;",
        "Lkotlin/properties/ReadOnlyProperty;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "Lorg/koin/core/scope/Scope;",
        "lifecycleOwner",
        "koinContext",
        "Lorg/koin/core/context/KoinContext;",
        "createScope",
        "Lkotlin/Function1;",
        "Lorg/koin/core/Koin;",
        "(Landroidx/lifecycle/LifecycleOwner;Lorg/koin/core/context/KoinContext;Lkotlin/jvm/functions/Function1;)V",
        "_scope",
        "getLifecycleOwner",
        "()Landroidx/lifecycle/LifecycleOwner;",
        "getValue",
        "thisRef",
        "property",
        "Lkotlin/reflect/KProperty;",
        "koin-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private _scope:Lorg/koin/core/scope/Scope;

.field private final lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Lorg/koin/core/context/KoinContext;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lorg/koin/core/context/KoinContext;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/koin/core/Koin;",
            "Lorg/koin/core/scope/Scope;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "koinContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 25
    invoke-interface {p2}, Lorg/koin/core/context/KoinContext;->get()Lorg/koin/core/Koin;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lorg/koin/core/Koin;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object p2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setup scope: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->_scope:Lorg/koin/core/scope/Scope;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/koin/core/logger/Logger;->debug(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Lorg/koin/core/component/KoinScopeComponentKt;->getScopeId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Lorg/koin/core/Koin;->getScopeOrNull(Ljava/lang/String;)Lorg/koin/core/scope/Scope;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/koin/core/scope/Scope;

    :goto_0
    iput-object v0, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->_scope:Lorg/koin/core/scope/Scope;

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "got scope: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->_scope:Lorg/koin/core/scope/Scope;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/koin/core/logger/Logger;->debug(Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance p3, Lorg/koin/androidx/scope/LifecycleScopeDelegate$2;

    invoke-direct {p3, p0, p2}, Lorg/koin/androidx/scope/LifecycleScopeDelegate$2;-><init>(Lorg/koin/androidx/scope/LifecycleScopeDelegate;Lorg/koin/core/logger/Logger;)V

    check-cast p3, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, p3}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/LifecycleOwner;Lorg/koin/core/context/KoinContext;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 18
    sget-object p2, Lorg/koin/core/context/GlobalContext;->INSTANCE:Lorg/koin/core/context/GlobalContext;

    check-cast p2, Lorg/koin/core/context/KoinContext;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 19
    new-instance p3, Lorg/koin/androidx/scope/LifecycleScopeDelegate$1;

    invoke-direct {p3, p1}, Lorg/koin/androidx/scope/LifecycleScopeDelegate$1;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/koin/androidx/scope/LifecycleScopeDelegate;-><init>(Landroidx/lifecycle/LifecycleOwner;Lorg/koin/core/context/KoinContext;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$get_scope$p(Lorg/koin/androidx/scope/LifecycleScopeDelegate;)Lorg/koin/core/scope/Scope;
    .locals 0

    .line 16
    iget-object p0, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->_scope:Lorg/koin/core/scope/Scope;

    return-object p0
.end method

.method public static final synthetic access$set_scope$p(Lorg/koin/androidx/scope/LifecycleScopeDelegate;Lorg/koin/core/scope/Scope;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->_scope:Lorg/koin/core/scope/Scope;

    return-void
.end method


# virtual methods
.method public final getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    return-object v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p0, p1, p2}, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->getValue(Landroidx/lifecycle/LifecycleOwner;Lkotlin/reflect/KProperty;)Lorg/koin/core/scope/Scope;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Landroidx/lifecycle/LifecycleOwner;Lkotlin/reflect/KProperty;)Lorg/koin/core/scope/Scope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/reflect/KProperty<",
            "*>;)",
            "Lorg/koin/core/scope/Scope;"
        }
    .end annotation

    const-string v0, "thisRef"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->_scope:Lorg/koin/core/scope/Scope;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "can\'t get Scope for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method
