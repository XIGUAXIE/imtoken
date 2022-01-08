.class final synthetic Lcom/helpscout/beacon/internal/presentation/common/FullScreenImageActivity$f;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/common/FullScreenImageActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/common/FullScreenImageActivity;)V
    .locals 7

    const-class v3, Lcom/helpscout/beacon/internal/presentation/common/FullScreenImageActivity;

    const/4 v1, 0x0

    const-string v4, "onErrorLoadingImage"

    const-string v5, "onErrorLoadingImage()V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/FunctionReferenceImpl;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/FullScreenImageActivity;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/common/FullScreenImageActivity;->a(Lcom/helpscout/beacon/internal/presentation/common/FullScreenImageActivity;)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/FullScreenImageActivity$f;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
