.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView$g;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVisibilityChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView$g;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;)V

    :cond_0
    return-void
.end method
