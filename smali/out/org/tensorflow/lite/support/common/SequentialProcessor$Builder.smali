.class public Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;
.super Ljava/lang/Object;
.source "SequentialProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/support/common/SequentialProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final operatorIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final operatorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/tensorflow/lite/support/common/Operator<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 62
    .local p0, "this":Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;, "Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;->operatorList:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;->operatorIndex:Ljava/util/Map;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;

    .line 57
    iget-object v0, p0, Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;->operatorList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;

    .line 57
    iget-object v0, p0, Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;->operatorIndex:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public add(Lorg/tensorflow/lite/support/common/Operator;)Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;
    .registers 5
    .param p1    # Lorg/tensorflow/lite/support/common/Operator;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/tensorflow/lite/support/common/Operator<",
            "TT;>;)",
            "Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;, "Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder<TT;>;"
    .local p1, "op":Lorg/tensorflow/lite/support/common/Operator;, "Lorg/tensorflow/lite/support/common/Operator<TT;>;"
    const-string v0, "Adding null Op is illegal."

    invoke-static {p1, v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;->operatorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "operatorName":Ljava/lang/String;
    iget-object v1, p0, Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;->operatorIndex:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 72
    iget-object v1, p0, Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;->operatorIndex:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_24
    iget-object v1, p0, Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;->operatorIndex:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;->operatorList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    return-object p0
.end method

.method public build()Lorg/tensorflow/lite/support/common/SequentialProcessor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/tensorflow/lite/support/common/SequentialProcessor<",
            "TT;>;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;, "Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder<TT;>;"
    new-instance v0, Lorg/tensorflow/lite/support/common/SequentialProcessor;

    invoke-direct {v0, p0}, Lorg/tensorflow/lite/support/common/SequentialProcessor;-><init>(Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;)V

    return-object v0
.end method
