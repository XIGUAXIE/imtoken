.class public final Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->a(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    check-cast p2, Lcom/helpscout/beacon/internal/domain/model/TranscriptEvent;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/domain/model/TranscriptEvent;->getCreatedAt()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Lcom/helpscout/beacon/internal/domain/model/TranscriptEvent;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/TranscriptEvent;->getCreatedAt()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
