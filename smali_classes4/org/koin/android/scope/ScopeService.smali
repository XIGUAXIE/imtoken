.class public abstract Lorg/koin/android/scope/ScopeService;
.super Landroid/app/Service;
.source "ScopeService.kt"

# interfaces
.implements Lorg/koin/android/scope/AndroidScopeComponent;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\rH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/koin/android/scope/ScopeService;",
        "Landroid/app/Service;",
        "Lorg/koin/android/scope/AndroidScopeComponent;",
        "initialiseScope",
        "",
        "(Z)V",
        "scope",
        "Lorg/koin/core/scope/Scope;",
        "getScope",
        "()Lorg/koin/core/scope/Scope;",
        "scope$delegate",
        "Lkotlin/Lazy;",
        "onCreate",
        "",
        "onDestroy",
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
.field private final initialiseScope:Z

.field private final scope$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/koin/android/scope/ScopeService;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-boolean p1, p0, Lorg/koin/android/scope/ScopeService;->initialiseScope:Z

    .line 33
    invoke-static {p0}, Lorg/koin/android/scope/ServiceExtKt;->serviceScope(Landroid/app/Service;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/koin/android/scope/ScopeService;->scope$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 30
    :cond_0
    invoke-direct {p0, p1}, Lorg/koin/android/scope/ScopeService;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getScope()Lorg/koin/core/scope/Scope;
    .locals 1

    iget-object v0, p0, Lorg/koin/android/scope/ScopeService;->scope$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/koin/core/scope/Scope;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 36
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 38
    iget-boolean v0, p0, Lorg/koin/android/scope/ScopeService;->initialiseScope:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lorg/koin/android/scope/ScopeService;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Open Service Scope: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/koin/android/scope/ScopeService;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/koin/core/logger/Logger;->debug(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 44
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 46
    invoke-virtual {p0}, Lorg/koin/android/scope/ScopeService;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Close service scope: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/koin/android/scope/ScopeService;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/koin/core/logger/Logger;->debug(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lorg/koin/android/scope/ScopeService;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->getClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lorg/koin/android/scope/ScopeService;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->close()V

    :cond_0
    return-void
.end method
