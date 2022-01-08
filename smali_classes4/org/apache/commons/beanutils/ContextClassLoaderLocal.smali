.class public Lorg/apache/commons/beanutils/ContextClassLoaderLocal;
.super Ljava/lang/Object;
.source "ContextClassLoaderLocal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private globalValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private globalValueInitialized:Z

.field private final valueByClassLoader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/ClassLoader;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->valueByClassLoader:Ljava/util/Map;

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->globalValueInitialized:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->valueByClassLoader:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v1, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->valueByClassLoader:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 152
    iget-object v2, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->valueByClassLoader:Ljava/util/Map;

    .line 153
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->initialValue()Ljava/lang/Object;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->valueByClassLoader:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :cond_0
    monitor-exit p0

    return-object v1

    .line 164
    :catch_0
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->globalValueInitialized:Z

    if-nez v0, :cond_2

    .line 165
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->initialValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->globalValue:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->globalValueInitialized:Z

    .line 168
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->globalValue:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected initialValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->valueByClassLoader:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->valueByClassLoader:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 194
    :catch_0
    :cond_0
    :try_start_2
    iput-object p1, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->globalValue:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 195
    iput-boolean p1, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->globalValueInitialized:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unset()V
    .locals 1

    monitor-enter p0

    .line 204
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 205
    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->unset(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 208
    :catch_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized unset(Ljava/lang/ClassLoader;)V
    .locals 1

    monitor-enter p0

    .line 215
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->valueByClassLoader:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
