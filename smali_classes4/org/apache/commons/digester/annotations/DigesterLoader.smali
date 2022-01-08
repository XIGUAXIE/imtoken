.class public final Lorg/apache/commons/digester/annotations/DigesterLoader;
.super Ljava/lang/Object;
.source "DigesterLoader.java"


# instance fields
.field private final annotationRuleProviderFactory:Lorg/apache/commons/digester/annotations/spi/AnnotationRuleProviderFactory;

.field private final cachedRuleSet:Lorg/apache/commons/digester/annotations/internal/RuleSetCache;

.field private final digesterLoaderHandlerFactory:Lorg/apache/commons/digester/annotations/spi/DigesterLoaderHandlerFactory;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/digester/annotations/spi/AnnotationRuleProviderFactory;Lorg/apache/commons/digester/annotations/spi/DigesterLoaderHandlerFactory;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lorg/apache/commons/digester/annotations/internal/RuleSetCache;

    invoke-direct {v0}, Lorg/apache/commons/digester/annotations/internal/RuleSetCache;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/annotations/DigesterLoader;->cachedRuleSet:Lorg/apache/commons/digester/annotations/internal/RuleSetCache;

    .line 61
    iput-object p1, p0, Lorg/apache/commons/digester/annotations/DigesterLoader;->annotationRuleProviderFactory:Lorg/apache/commons/digester/annotations/spi/AnnotationRuleProviderFactory;

    .line 62
    iput-object p2, p0, Lorg/apache/commons/digester/annotations/DigesterLoader;->digesterLoaderHandlerFactory:Lorg/apache/commons/digester/annotations/spi/DigesterLoaderHandlerFactory;

    return-void
.end method

.method private handle(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/AnnotatedElement;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            "E::",
            "Ljava/lang/reflect/AnnotatedElement;",
            "R:",
            "Lorg/apache/commons/digester/Rule;",
            ">(TA;TE;",
            "Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;",
            ")V"
        }
    .end annotation

    .line 188
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 191
    const-class v1, Lorg/apache/commons/digester/annotations/DigesterRuleList;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    invoke-static {p1}, Lorg/apache/commons/digester/annotations/utils/AnnotationUtils;->getAnnotationsArrayValue(Ljava/lang/annotation/Annotation;)[Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 193
    array-length v0, p1

    if-lez v0, :cond_2

    .line 195
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 196
    invoke-direct {p0, v2, p2, p3}, Lorg/apache/commons/digester/annotations/DigesterLoader;->handle(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/AnnotatedElement;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_0
    const-class v1, Lorg/apache/commons/digester/annotations/DigesterRule;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    const-class v1, Lorg/apache/commons/digester/annotations/DigesterRule;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/digester/annotations/DigesterRule;

    .line 202
    const-class v1, Lorg/apache/commons/digester/annotations/handlers/DefaultLoaderHandler;

    invoke-interface {v0}, Lorg/apache/commons/digester/annotations/DigesterRule;->handledBy()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 203
    invoke-interface {v0}, Lorg/apache/commons/digester/annotations/DigesterRule;->providedBy()Ljava/lang/Class;

    move-result-object v0

    .line 205
    invoke-static {p1}, Lorg/apache/commons/digester/annotations/utils/AnnotationUtils;->getAnnotationPattern(Ljava/lang/annotation/Annotation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1, v0, p1, p2}, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->addRuleProvider(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/reflect/AnnotatedElement;)V

    goto :goto_1

    .line 210
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/digester/annotations/DigesterRule;->handledBy()Ljava/lang/Class;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lorg/apache/commons/digester/annotations/DigesterLoader;->digesterLoaderHandlerFactory:Lorg/apache/commons/digester/annotations/spi/DigesterLoaderHandlerFactory;

    invoke-interface {v1, v0}, Lorg/apache/commons/digester/annotations/spi/DigesterLoaderHandlerFactory;->newInstance(Ljava/lang/Class;)Lorg/apache/commons/digester/annotations/DigesterLoaderHandler;

    move-result-object v0

    .line 216
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/digester/annotations/DigesterLoaderHandler;->handle(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/AnnotatedElement;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private handle(Ljava/lang/reflect/AnnotatedElement;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V
    .locals 4

    .line 172
    invoke-interface {p1}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 173
    invoke-direct {p0, v3, p1, p2}, Lorg/apache/commons/digester/annotations/DigesterLoader;->handle(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/AnnotatedElement;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addRules(Ljava/lang/Class;Lorg/apache/commons/digester/Digester;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/digester/Digester;",
            ")V"
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p1}, Lorg/apache/commons/digester/annotations/DigesterLoader;->getRuleSet(Ljava/lang/Class;)Lorg/apache/commons/digester/RuleSet;

    move-result-object p1

    .line 96
    invoke-interface {p1, p2}, Lorg/apache/commons/digester/RuleSet;->addRuleInstances(Lorg/apache/commons/digester/Digester;)V

    return-void
.end method

.method public addRulesTo(Ljava/lang/Class;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;",
            ")V"
        }
    .end annotation

    .line 129
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2, p1}, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->mapsClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/digester/annotations/DigesterLoader;->cachedRuleSet:Lorg/apache/commons/digester/annotations/internal/RuleSetCache;

    invoke-virtual {v0, p1}, Lorg/apache/commons/digester/annotations/internal/RuleSetCache;->containsKey(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lorg/apache/commons/digester/annotations/DigesterLoader;->cachedRuleSet:Lorg/apache/commons/digester/annotations/internal/RuleSetCache;

    invoke-virtual {v0, p1}, Lorg/apache/commons/digester/annotations/internal/RuleSetCache;->get(Ljava/lang/Class;)Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->addRulesProviderFrom(Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V

    .line 137
    invoke-virtual {p2, p1}, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->addMappedClass(Ljava/lang/Class;)V

    return-void

    .line 142
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/digester/annotations/DigesterLoader;->handle(Ljava/lang/reflect/AnnotatedElement;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V

    .line 145
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 146
    invoke-direct {p0, v4, p2}, Lorg/apache/commons/digester/annotations/DigesterLoader;->handle(Ljava/lang/reflect/AnnotatedElement;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 151
    invoke-direct {p0, v4, p2}, Lorg/apache/commons/digester/annotations/DigesterLoader;->handle(Ljava/lang/reflect/AnnotatedElement;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V

    .line 154
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v5

    .line 155
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    const/4 v6, 0x0

    .line 156
    :goto_2
    array-length v7, v4

    if-ge v6, v7, :cond_3

    .line 157
    new-instance v7, Lorg/apache/commons/digester/annotations/reflect/MethodArgument;

    aget-object v8, v4, v6

    aget-object v9, v5, v6

    invoke-direct {v7, v6, v8, v9}, Lorg/apache/commons/digester/annotations/reflect/MethodArgument;-><init>(ILjava/lang/Class;[Ljava/lang/annotation/Annotation;)V

    invoke-direct {p0, v7, p2}, Lorg/apache/commons/digester/annotations/DigesterLoader;->handle(Ljava/lang/reflect/AnnotatedElement;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 161
    :cond_4
    invoke-virtual {p2, p1}, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->addMappedClass(Ljava/lang/Class;)V

    .line 162
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/digester/annotations/DigesterLoader;->addRulesTo(Ljava/lang/Class;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public createDigester(Ljava/lang/Class;)Lorg/apache/commons/digester/Digester;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/digester/Digester;"
        }
    .end annotation

    .line 81
    new-instance v0, Lorg/apache/commons/digester/Digester;

    invoke-direct {v0}, Lorg/apache/commons/digester/Digester;-><init>()V

    .line 82
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/digester/Digester;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 83
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/annotations/DigesterLoader;->addRules(Ljava/lang/Class;Lorg/apache/commons/digester/Digester;)V

    return-object v0
.end method

.method protected getAnnotationRuleProviderFactory()Lorg/apache/commons/digester/annotations/spi/AnnotationRuleProviderFactory;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/commons/digester/annotations/DigesterLoader;->annotationRuleProviderFactory:Lorg/apache/commons/digester/annotations/spi/AnnotationRuleProviderFactory;

    return-object v0
.end method

.method protected getDigesterLoaderHandlerFactory()Lorg/apache/commons/digester/annotations/spi/DigesterLoaderHandlerFactory;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/commons/digester/annotations/DigesterLoader;->digesterLoaderHandlerFactory:Lorg/apache/commons/digester/annotations/spi/DigesterLoaderHandlerFactory;

    return-object v0
.end method

.method public getRuleSet(Ljava/lang/Class;)Lorg/apache/commons/digester/RuleSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/digester/RuleSet;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/apache/commons/digester/annotations/DigesterLoader;->cachedRuleSet:Lorg/apache/commons/digester/annotations/internal/RuleSetCache;

    invoke-virtual {v0, p1}, Lorg/apache/commons/digester/annotations/internal/RuleSetCache;->containsKey(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/apache/commons/digester/annotations/DigesterLoader;->cachedRuleSet:Lorg/apache/commons/digester/annotations/internal/RuleSetCache;

    invoke-virtual {v0, p1}, Lorg/apache/commons/digester/annotations/internal/RuleSetCache;->get(Ljava/lang/Class;)Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;

    move-result-object p1

    return-object p1

    .line 114
    :cond_0
    new-instance v0, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;

    invoke-direct {v0, p0}, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;-><init>(Lorg/apache/commons/digester/annotations/DigesterLoader;)V

    .line 115
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/annotations/DigesterLoader;->addRulesTo(Ljava/lang/Class;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V

    .line 116
    iget-object v1, p0, Lorg/apache/commons/digester/annotations/DigesterLoader;->cachedRuleSet:Lorg/apache/commons/digester/annotations/internal/RuleSetCache;

    invoke-virtual {v1, p1, v0}, Lorg/apache/commons/digester/annotations/internal/RuleSetCache;->put(Ljava/lang/Class;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V

    return-object v0
.end method
