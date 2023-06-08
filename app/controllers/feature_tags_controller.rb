class FeatureTagsController < ApplicationController
  def new
    @feature = Feature.find(params[:feature_id])
    @feature_tag = FeatureTag.new
  end

  def create
    @feature = Feature.find(params[:feature_id])
    @tags = Tag.where(id: params[:plant_tag] [:tag])
    @tags.each do |tag|
      feature_tag = FeatureTag.new(feature: @feature, tag: tag)
      feature_tag.save
    end
    redirect_to kitchen_path(@feature.kitchen)
  end
end
