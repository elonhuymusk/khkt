.class Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
.super Ljava/lang/Object;
.source "Flow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/widgets/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetsList"
.end annotation


# instance fields
.field private biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field biggestDimension:I

.field private mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mCount:I

.field private mHeight:I

.field private mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mMax:I

.field private mNbMatchConstraintsWidgets:I

.field private mOrientation:I

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mStartIndex:I

.field private mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mWidth:I

.field final synthetic this$0:Landroidx/constraintlayout/solver/widgets/Flow;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V
    .registers 10
    .param p2, "orientation"    # I
    .param p3, "left"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p4, "top"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p5, "right"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p6, "bottom"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p7, "max"    # I

    .line 353
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    .line 333
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 334
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 339
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 340
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 341
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 342
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 343
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 344
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 345
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 346
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 347
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 348
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    .line 354
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    .line 355
    iput-object p3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 356
    iput-object p4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 357
    iput-object p5, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 358
    iput-object p6, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 359
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 360
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingTop()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 361
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 362
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 363
    iput p7, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    .line 364
    return-void
.end method

.method static synthetic access$2000(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    .line 331
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method private recomputeDimensions()V
    .registers 9

    .line 721
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 722
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 723
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 724
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 725
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 726
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_92

    .line 727
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v2, v1

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v3}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v3

    if-lt v2, v3, :cond_1c

    .line 728
    goto/16 :goto_92

    .line 730
    :cond_1c
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v2}, Landroidx/constraintlayout/solver/widgets/Flow;->access$500(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v3, v1

    aget-object v2, v2, v3

    .line 731
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    const/16 v4, 0x8

    if-nez v3, :cond_5c

    .line 732
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    .line 733
    .local v3, "width":I
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v5}, Landroidx/constraintlayout/solver/widgets/Flow;->access$000(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v5

    .line 734
    .local v5, "gap":I
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    if-ne v6, v4, :cond_3e

    .line 735
    const/4 v5, 0x0

    .line 737
    :cond_3e
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    add-int v6, v3, v5

    add-int/2addr v4, v6

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 738
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v4, v2, v6}, Landroidx/constraintlayout/solver/widgets/Flow;->access$300(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v4

    .line 739
    .local v4, "height":I
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v6, :cond_55

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    if-ge v6, v4, :cond_5b

    .line 740
    :cond_55
    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 741
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 742
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 744
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "gap":I
    :cond_5b
    goto :goto_8e

    .line 745
    :cond_5c
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v3, v2, v5}, Landroidx/constraintlayout/solver/widgets/Flow;->access$200(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v3

    .line 746
    .restart local v3    # "width":I
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v5, v2, v6}, Landroidx/constraintlayout/solver/widgets/Flow;->access$300(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v5

    .line 747
    .local v5, "height":I
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v6}, Landroidx/constraintlayout/solver/widgets/Flow;->access$100(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v6

    .line 748
    .local v6, "gap":I
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    if-ne v7, v4, :cond_79

    .line 749
    const/4 v6, 0x0

    .line 751
    :cond_79
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    add-int v7, v5, v6

    add-int/2addr v4, v7

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 752
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v4, :cond_88

    iget v4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    if-ge v4, v3, :cond_8e

    .line 753
    :cond_88
    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 754
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 755
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 726
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v3    # "width":I
    .end local v5    # "height":I
    .end local v6    # "gap":I
    :cond_8e
    :goto_8e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d

    .line 759
    .end local v1    # "i":I
    :cond_92
    :goto_92
    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .registers 7
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 409
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    const/16 v1, 0x8

    if-nez v0, :cond_48

    .line 410
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v0, p1, v2}, Landroidx/constraintlayout/solver/widgets/Flow;->access$200(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v0

    .line 411
    .local v0, "width":I
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_1d

    .line 412
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 413
    const/4 v0, 0x0

    .line 415
    :cond_1d
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v2}, Landroidx/constraintlayout/solver/widgets/Flow;->access$000(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v2

    .line 416
    .local v2, "gap":I
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v3

    if-ne v3, v1, :cond_2a

    .line 417
    const/4 v2, 0x0

    .line 419
    :cond_2a
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    add-int v3, v0, v2

    add-int/2addr v1, v3

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 420
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v1, p1, v3}, Landroidx/constraintlayout/solver/widgets/Flow;->access$300(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v1

    .line 421
    .local v1, "height":I
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v3, :cond_41

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    if-ge v3, v1, :cond_47

    .line 422
    :cond_41
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 423
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 424
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 426
    .end local v0    # "width":I
    .end local v1    # "height":I
    .end local v2    # "gap":I
    :cond_47
    goto :goto_89

    .line 427
    :cond_48
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v0, p1, v2}, Landroidx/constraintlayout/solver/widgets/Flow;->access$200(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v0

    .line 428
    .restart local v0    # "width":I
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    invoke-static {v2, p1, v3}, Landroidx/constraintlayout/solver/widgets/Flow;->access$300(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v2

    .line 429
    .local v2, "height":I
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_67

    .line 430
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 431
    const/4 v2, 0x0

    .line 433
    :cond_67
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v3}, Landroidx/constraintlayout/solver/widgets/Flow;->access$100(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v3

    .line 434
    .local v3, "gap":I
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    if-ne v4, v1, :cond_74

    .line 435
    const/4 v3, 0x0

    .line 437
    :cond_74
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    add-int v4, v2, v3

    add-int/2addr v1, v4

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 438
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_83

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    if-ge v1, v0, :cond_89

    .line 439
    :cond_83
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 440
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 441
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 444
    .end local v0    # "width":I
    .end local v2    # "height":I
    .end local v3    # "gap":I
    :cond_89
    :goto_89
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 445
    return-void
.end method

.method public clear()V
    .registers 3

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggestDimension:I

    .line 384
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 385
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    .line 386
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    .line 387
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    .line 388
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 389
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    .line 390
    return-void
.end method

.method public createConstraints(ZIZ)V
    .registers 20
    .param p1, "isInRtl"    # Z
    .param p2, "chainIndex"    # I
    .param p3, "isLastChain"    # Z

    .line 448
    move-object/from16 v0, p0

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 449
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_26

    .line 450
    iget v3, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v3, v2

    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v4}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v4

    if-lt v3, v4, :cond_13

    .line 451
    goto :goto_26

    .line 453
    :cond_13
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v3}, Landroidx/constraintlayout/solver/widgets/Flow;->access$500(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v3

    iget v4, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v4, v2

    aget-object v3, v3, v4

    .line 454
    .local v3, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v3, :cond_23

    .line 455
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetAnchors()V

    .line 449
    .end local v3    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 458
    .end local v2    # "i":I
    :cond_26
    :goto_26
    if-eqz v1, :cond_363

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v2, :cond_2e

    goto/16 :goto_363

    .line 462
    :cond_2e
    const/4 v2, 0x0

    if-eqz p3, :cond_35

    if-nez p2, :cond_35

    const/4 v3, 0x1

    goto :goto_36

    :cond_35
    const/4 v3, 0x0

    .line 463
    .local v3, "singleChain":Z
    :goto_36
    const/4 v4, -0x1

    .line 464
    .local v4, "firstVisible":I
    const/4 v5, -0x1

    .line 465
    .local v5, "lastVisible":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_39
    const/4 v7, -0x1

    if-ge v6, v1, :cond_67

    .line 466
    move v8, v6

    .line 467
    .local v8, "index":I
    if-eqz p1, :cond_43

    .line 468
    add-int/lit8 v9, v1, -0x1

    sub-int v8, v9, v6

    .line 470
    :cond_43
    iget v9, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v9, v8

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v10

    if-lt v9, v10, :cond_4f

    .line 471
    goto :goto_67

    .line 473
    :cond_4f
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v9}, Landroidx/constraintlayout/solver/widgets/Flow;->access$500(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    iget v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v10, v8

    aget-object v9, v9, v10

    .line 474
    .local v9, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v10

    if-nez v10, :cond_64

    .line 475
    if-ne v4, v7, :cond_63

    .line 476
    move v4, v6

    .line 478
    :cond_63
    move v5, v6

    .line 465
    .end local v8    # "index":I
    .end local v9    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_64
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 482
    .end local v6    # "i":I
    :cond_67
    :goto_67
    const/4 v6, 0x0

    .line 483
    .local v6, "previous":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget v8, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    if-nez v8, :cond_1ef

    .line 484
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 485
    .local v8, "verticalWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v9}, Landroidx/constraintlayout/solver/widgets/Flow;->access$600(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 486
    iget v9, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 487
    .local v9, "padding":I
    if-lez p2, :cond_82

    .line 488
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/Flow;->access$100(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v10

    add-int/2addr v9, v10

    .line 490
    :cond_82
    iget-object v10, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10, v11, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 491
    if-eqz p3, :cond_94

    .line 492
    iget-object v10, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 494
    :cond_94
    if-lez p2, :cond_a1

    .line 495
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 496
    .local v10, "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v11, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10, v11, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 499
    .end local v10    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_a1
    move-object v10, v8

    .line 500
    .local v10, "baselineVerticalWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v11}, Landroidx/constraintlayout/solver/widgets/Flow;->access$700(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_dd

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v11

    if-nez v11, :cond_dd

    .line 501
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_b2
    if-ge v11, v1, :cond_dd

    .line 502
    move v13, v11

    .line 503
    .local v13, "index":I
    if-eqz p1, :cond_bb

    .line 504
    add-int/lit8 v14, v1, -0x1

    sub-int v13, v14, v11

    .line 506
    :cond_bb
    iget v14, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v14, v13

    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v15}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v15

    if-lt v14, v15, :cond_c7

    .line 507
    goto :goto_dd

    .line 509
    :cond_c7
    iget-object v14, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v14}, Landroidx/constraintlayout/solver/widgets/Flow;->access$500(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v14

    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v15, v13

    aget-object v14, v14, v15

    .line 510
    .local v14, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v15

    if-eqz v15, :cond_da

    .line 511
    move-object v10, v14

    .line 512
    goto :goto_dd

    .line 501
    .end local v13    # "index":I
    .end local v14    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_da
    add-int/lit8 v11, v11, 0x1

    goto :goto_b2

    .line 517
    .end local v11    # "i":I
    :cond_dd
    :goto_dd
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_de
    if-ge v11, v1, :cond_1ed

    .line 518
    move v13, v11

    .line 519
    .restart local v13    # "index":I
    if-eqz p1, :cond_e7

    .line 520
    add-int/lit8 v14, v1, -0x1

    sub-int v13, v14, v11

    .line 522
    :cond_e7
    iget v14, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v14, v13

    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v15}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v15

    if-lt v14, v15, :cond_f4

    .line 523
    goto/16 :goto_1ed

    .line 525
    :cond_f4
    iget-object v14, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v14}, Landroidx/constraintlayout/solver/widgets/Flow;->access$500(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v14

    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v15, v13

    aget-object v14, v14, v15

    .line 526
    .restart local v14    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-nez v11, :cond_10a

    .line 527
    iget-object v15, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v2, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    invoke-virtual {v14, v15, v12, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 532
    :cond_10a
    if-nez v13, :cond_14d

    .line 533
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v2}, Landroidx/constraintlayout/solver/widgets/Flow;->access$800(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v2

    .line 534
    .local v2, "style":I
    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v12}, Landroidx/constraintlayout/solver/widgets/Flow;->access$900(Landroidx/constraintlayout/solver/widgets/Flow;)F

    move-result v12

    .line 535
    .local v12, "bias":F
    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    if-nez v15, :cond_131

    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v15}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1000(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v15

    if-eq v15, v7, :cond_131

    .line 536
    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v15}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1000(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v2

    .line 537
    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v15}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1100(Landroidx/constraintlayout/solver/widgets/Flow;)F

    move-result v12

    goto :goto_147

    .line 538
    :cond_131
    if-eqz p3, :cond_147

    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v15}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1200(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v15

    if-eq v15, v7, :cond_147

    .line 539
    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v15}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1200(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v2

    .line 540
    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v15}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1300(Landroidx/constraintlayout/solver/widgets/Flow;)F

    move-result v12

    .line 542
    :cond_147
    :goto_147
    invoke-virtual {v14, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 543
    invoke-virtual {v14, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 545
    .end local v2    # "style":I
    .end local v12    # "bias":F
    :cond_14d
    add-int/lit8 v2, v1, -0x1

    if-ne v11, v2, :cond_15a

    .line 546
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    invoke-virtual {v14, v2, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 548
    :cond_15a
    if-eqz v6, :cond_185

    .line 549
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v15}, Landroidx/constraintlayout/solver/widgets/Flow;->access$000(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v15

    invoke-virtual {v2, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 550
    if-ne v11, v4, :cond_172

    .line 551
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    invoke-virtual {v2, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 553
    :cond_172
    iget-object v2, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v15, 0x0

    invoke-virtual {v2, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 554
    add-int/lit8 v2, v5, 0x1

    if-ne v11, v2, :cond_185

    .line 555
    iget-object v2, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    invoke-virtual {v2, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 558
    :cond_185
    if-eq v14, v8, :cond_1e6

    .line 559
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v2}, Landroidx/constraintlayout/solver/widgets/Flow;->access$700(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v2

    const/4 v12, 0x3

    if-ne v2, v12, :cond_1a7

    .line 560
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v2

    if-eqz v2, :cond_1a7

    if-eq v14, v10, :cond_1a7

    .line 562
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v2

    if-eqz v2, :cond_1a7

    .line 563
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v15, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v12, 0x0

    invoke-virtual {v2, v15, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_1e6

    .line 565
    :cond_1a7
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v2}, Landroidx/constraintlayout/solver/widgets/Flow;->access$700(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v2

    packed-switch v2, :pswitch_data_364

    .line 576
    if-eqz v3, :cond_1d7

    .line 577
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    invoke-virtual {v2, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 578
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    invoke-virtual {v2, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_1e6

    .line 571
    :pswitch_1c5
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v15, 0x0

    invoke-virtual {v2, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 573
    goto :goto_1e6

    .line 567
    :pswitch_1ce
    const/4 v15, 0x0

    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 569
    goto :goto_1e6

    .line 580
    :cond_1d7
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v15, 0x0

    invoke-virtual {v2, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 581
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2, v12, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 587
    :cond_1e6
    :goto_1e6
    move-object v6, v14

    .line 517
    .end local v13    # "index":I
    .end local v14    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x0

    const/4 v12, 0x3

    goto/16 :goto_de

    .line 589
    .end local v8    # "verticalWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v9    # "padding":I
    .end local v10    # "baselineVerticalWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v11    # "i":I
    :cond_1ed
    :goto_1ed
    goto/16 :goto_362

    .line 590
    :cond_1ef
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 591
    .local v2, "horizontalWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v8}, Landroidx/constraintlayout/solver/widgets/Flow;->access$800(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 592
    iget v8, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 593
    .local v8, "padding":I
    if-lez p2, :cond_205

    .line 594
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v9}, Landroidx/constraintlayout/solver/widgets/Flow;->access$000(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v9

    add-int/2addr v8, v9

    .line 596
    :cond_205
    if-eqz p1, :cond_228

    .line 597
    iget-object v9, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 598
    if-eqz p3, :cond_219

    .line 599
    iget-object v9, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    invoke-virtual {v9, v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 601
    :cond_219
    if-lez p2, :cond_248

    .line 602
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 603
    .local v9, "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 604
    .end local v9    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto :goto_248

    .line 606
    :cond_228
    iget-object v9, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 607
    if-eqz p3, :cond_23a

    .line 608
    iget-object v9, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    invoke-virtual {v9, v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 610
    :cond_23a
    if-lez p2, :cond_248

    .line 611
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 612
    .local v9, "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 615
    .end local v9    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_248
    :goto_248
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_249
    if-ge v9, v1, :cond_362

    .line 616
    iget v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v10, v9

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v11}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v11

    if-lt v10, v11, :cond_258

    .line 617
    goto/16 :goto_362

    .line 619
    :cond_258
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/Flow;->access$500(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v10

    iget v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v11, v9

    aget-object v10, v10, v11

    .line 620
    .local v10, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-nez v9, :cond_2af

    .line 621
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 622
    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v11}, Landroidx/constraintlayout/solver/widgets/Flow;->access$600(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v11

    .line 623
    .local v11, "style":I
    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v12}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1400(Landroidx/constraintlayout/solver/widgets/Flow;)F

    move-result v12

    .line 624
    .restart local v12    # "bias":F
    iget v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    if-nez v13, :cond_293

    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v13}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1500(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v13

    if-eq v13, v7, :cond_293

    .line 625
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v13}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1500(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v11

    .line 626
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v13}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1600(Landroidx/constraintlayout/solver/widgets/Flow;)F

    move-result v12

    goto :goto_2a9

    .line 627
    :cond_293
    if-eqz p3, :cond_2a9

    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v13}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1700(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v13

    if-eq v13, v7, :cond_2a9

    .line 628
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v13}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1700(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v11

    .line 629
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v13}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1800(Landroidx/constraintlayout/solver/widgets/Flow;)F

    move-result v12

    .line 631
    :cond_2a9
    :goto_2a9
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 632
    invoke-virtual {v10, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 634
    .end local v11    # "style":I
    .end local v12    # "bias":F
    :cond_2af
    add-int/lit8 v11, v1, -0x1

    if-ne v9, v11, :cond_2bc

    .line 635
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 637
    :cond_2bc
    if-eqz v6, :cond_2e7

    .line 638
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v13}, Landroidx/constraintlayout/solver/widgets/Flow;->access$100(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 639
    if-ne v9, v4, :cond_2d4

    .line 640
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 642
    :cond_2d4
    iget-object v11, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 643
    add-int/lit8 v11, v5, 0x1

    if-ne v9, v11, :cond_2e7

    .line 644
    iget-object v11, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setGoneMargin(I)V

    .line 647
    :cond_2e7
    if-eq v10, v2, :cond_35c

    .line 648
    if-eqz p1, :cond_319

    .line 649
    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v11}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1900(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v11

    packed-switch v11, :pswitch_data_36c

    goto :goto_317

    .line 655
    :pswitch_2f5
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 656
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 658
    goto :goto_317

    .line 660
    :pswitch_305
    const/4 v13, 0x0

    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_317

    .line 651
    :pswitch_30e
    const/4 v13, 0x0

    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 653
    nop

    .line 662
    :goto_317
    const/4 v13, 0x0

    goto :goto_35d

    .line 665
    :cond_319
    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v11}, Landroidx/constraintlayout/solver/widgets/Flow;->access$1900(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v11

    packed-switch v11, :pswitch_data_376

    const/4 v13, 0x0

    goto :goto_35d

    .line 671
    :pswitch_324
    if-eqz v3, :cond_33a

    .line 672
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 673
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v13, v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    const/4 v13, 0x0

    goto :goto_35d

    .line 675
    :cond_33a
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 676
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 679
    goto :goto_35d

    .line 681
    :pswitch_34a
    const/4 v13, 0x0

    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_35d

    .line 667
    :pswitch_353
    const/4 v13, 0x0

    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 669
    goto :goto_35d

    .line 647
    :cond_35c
    const/4 v13, 0x0

    .line 687
    :goto_35d
    move-object v6, v10

    .line 615
    .end local v10    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_249

    .line 690
    .end local v2    # "horizontalWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v8    # "padding":I
    .end local v9    # "i":I
    :cond_362
    :goto_362
    return-void

    .line 459
    .end local v3    # "singleChain":Z
    .end local v4    # "firstVisible":I
    .end local v5    # "lastVisible":I
    .end local v6    # "previous":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_363
    :goto_363
    return-void

    :pswitch_data_364
    .packed-switch 0x0
        :pswitch_1ce
        :pswitch_1c5
    .end packed-switch

    :pswitch_data_36c
    .packed-switch 0x0
        :pswitch_30e
        :pswitch_305
        :pswitch_2f5
    .end packed-switch

    :pswitch_data_376
    .packed-switch 0x0
        :pswitch_353
        :pswitch_34a
        :pswitch_324
    .end packed-switch
.end method

.method public getHeight()I
    .registers 3

    .line 402
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 403
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v1}, Landroidx/constraintlayout/solver/widgets/Flow;->access$100(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 405
    :cond_f
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .registers 3

    .line 395
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    if-nez v0, :cond_e

    .line 396
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v1}, Landroidx/constraintlayout/solver/widgets/Flow;->access$000(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 398
    :cond_e
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mWidth:I

    return v0
.end method

.method public measureMatchConstraints(I)V
    .registers 12
    .param p1, "availableSpace"    # I

    .line 693
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    if-nez v0, :cond_5

    .line 694
    return-void

    .line 696
    :cond_5
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mCount:I

    .line 697
    .local v1, "count":I
    div-int v0, p1, v0

    .line 698
    .local v0, "widgetSize":I
    const/4 v2, 0x0

    move v8, v2

    .local v8, "i":I
    :goto_b
    if-ge v8, v1, :cond_6a

    .line 699
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v2, v8

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v3}, Landroidx/constraintlayout/solver/widgets/Flow;->access$400(Landroidx/constraintlayout/solver/widgets/Flow;)I

    move-result v3

    if-lt v2, v3, :cond_19

    .line 700
    goto :goto_6a

    .line 702
    :cond_19
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-static {v2}, Landroidx/constraintlayout/solver/widgets/Flow;->access$500(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    add-int/2addr v3, v8

    aget-object v9, v2, v3

    .line 703
    .local v9, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    if-nez v2, :cond_48

    .line 704
    if-eqz v9, :cond_67

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_67

    .line 705
    iget v2, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v2, :cond_67

    .line 706
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v7

    move-object v3, v9

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    goto :goto_67

    .line 710
    :cond_48
    if-eqz v9, :cond_67

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_67

    .line 711
    iget v2, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v2, :cond_67

    .line 712
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->this$0:Landroidx/constraintlayout/solver/widgets/Flow;

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v3, v9

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 698
    .end local v9    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_67
    :goto_67
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 717
    .end local v8    # "i":I
    :cond_6a
    :goto_6a
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->recomputeDimensions()V

    .line 718
    return-void
.end method

.method public setStartIndex(I)V
    .registers 2
    .param p1, "value"    # I

    .line 392
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mStartIndex:I

    return-void
.end method

.method public setup(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V
    .registers 11
    .param p1, "orientation"    # I
    .param p2, "left"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p3, "top"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p4, "right"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p5, "bottom"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p6, "paddingLeft"    # I
    .param p7, "paddingTop"    # I
    .param p8, "paddingRight"    # I
    .param p9, "paddingBottom"    # I
    .param p10, "max"    # I

    .line 370
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mOrientation:I

    .line 371
    iput-object p2, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 372
    iput-object p3, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 373
    iput-object p4, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 374
    iput-object p5, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 375
    iput p6, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingLeft:I

    .line 376
    iput p7, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingTop:I

    .line 377
    iput p8, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingRight:I

    .line 378
    iput p9, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mPaddingBottom:I

    .line 379
    iput p10, p0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->mMax:I

    .line 380
    return-void
.end method
