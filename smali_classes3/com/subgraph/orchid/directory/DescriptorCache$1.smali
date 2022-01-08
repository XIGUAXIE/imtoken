.class Lcom/subgraph/orchid/directory/DescriptorCache$1;
.super Ljava/lang/Object;
.source "DescriptorCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/directory/DescriptorCache;->startRebuildTask()Ljava/util/concurrent/ScheduledFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/directory/DescriptorCache;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/directory/DescriptorCache;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DescriptorCache$1;->this$0:Lcom/subgraph/orchid/directory/DescriptorCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache$1;->this$0:Lcom/subgraph/orchid/directory/DescriptorCache;

    invoke-static {v0}, Lcom/subgraph/orchid/directory/DescriptorCache;->access$000(Lcom/subgraph/orchid/directory/DescriptorCache;)V

    return-void
.end method
