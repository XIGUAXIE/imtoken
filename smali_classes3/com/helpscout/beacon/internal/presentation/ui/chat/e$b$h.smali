.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$h;
.super Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# static fields
.field public static final c:Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$h;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$h;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$h;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$h;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    sget v0, Lcom/helpscout/beacon/ui/R$id;->transition_chat_header_initial_to_no_agents_expanded:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b;-><init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
