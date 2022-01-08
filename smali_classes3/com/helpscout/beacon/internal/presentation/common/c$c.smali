.class public final Lcom/helpscout/beacon/internal/presentation/common/c$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/common/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/helpscout/beacon/internal/presentation/common/o/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/ComponentCallbacks;

.field final synthetic b:Lorg/koin/core/qualifier/Qualifier;

.field final synthetic c:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/c$c;->a:Landroid/content/ComponentCallbacks;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/c$c;->b:Lorg/koin/core/qualifier/Qualifier;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/common/c$c;->c:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/helpscout/beacon/internal/presentation/common/o/a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/c$c;->a:Landroid/content/ComponentCallbacks;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/c$c;->b:Lorg/koin/core/qualifier/Qualifier;

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/common/c$c;->c:Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lorg/koin/android/ext/android/ComponentCallbackExtKt;->getDefaultScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    move-result-object v0

    const-class v3, Lcom/helpscout/beacon/internal/presentation/common/o/a;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
