.class public final Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/ViewModelStoreOwner;

.field final synthetic b:Lorg/koin/core/qualifier/Qualifier;

.field final synthetic c:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/ViewModelStoreOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$a;->a:Landroidx/lifecycle/ViewModelStoreOwner;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$a;->b:Lorg/koin/core/qualifier/Qualifier;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$a;->c:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/ViewModel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$a;->a:Landroidx/lifecycle/ViewModelStoreOwner;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$a;->b:Lorg/koin/core/qualifier/Qualifier;

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$a;->c:Lkotlin/jvm/functions/Function0;

    const-class v3, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v0, v1, v3, v2}, Lorg/koin/androidx/viewmodel/ext/android/ViewModelStoreOwnerExtKt;->getViewModel(Landroidx/lifecycle/ViewModelStoreOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$a;->a()Landroidx/lifecycle/ViewModel;

    move-result-object v0

    return-object v0
.end method
