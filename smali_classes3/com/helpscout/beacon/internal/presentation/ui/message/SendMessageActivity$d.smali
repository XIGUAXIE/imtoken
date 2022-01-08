.class final Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$d;->a:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVisibilityChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$d;->a:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;Z)V

    :cond_0
    return-void
.end method
